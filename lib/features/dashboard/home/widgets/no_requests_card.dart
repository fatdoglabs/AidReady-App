import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/home/widgets/no_request_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoRequestsCard extends StatelessWidget {
  const NoRequestsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: loadImage(bloodDropImage),
        builder: (_, snapshot) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: NoRequestDecoration(image: snapshot.data),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const PictureView(
                      imageUri: noRequestHeaderImage,
                    ),
                    10.verticalSpace,
                    Text(
                      context.l10n.noRequests,
                      style: bold.copyWith(color: secondary950),
                    ),
                    Text(
                      context.l10n.noRequestsMessage,
                      textAlign: TextAlign.center,
                      style: regular.copyWith(
                          fontSize: 12.0, color: primaryDark600),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Future<ui.Image> loadImage(String imageAssetPath) async {
    final ByteData data = await rootBundle.load(imageAssetPath);
    final Completer<ui.Image> completer = Completer();
    ui.decodeImageFromList(Uint8List.view(data.buffer), (ui.Image img) {
      return completer.complete(img);
    });
    return completer.future;
  }
}
