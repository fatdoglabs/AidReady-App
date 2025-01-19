import 'dart:io';

import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/assets.dart';

class PictureView extends StatelessWidget {
  const PictureView(
      {super.key,
      this.imageUri,
      this.width,
      this.height,
      this.matchDirection = false});

  final String? imageUri;
  final double? width;
  final double? height;
  final bool matchDirection; //important for text direction

  @override
  Widget build(BuildContext context) {
    if (imageUri.isNullOrEmpty) {
      return const _PlaceHolder();
    } else {
      if (imageUri!.startsWith("assets")) {
        if (imageUri!.endsWith("svg")) {
          return SvgPicture.asset(
            imageUri!,
            width: width,
            height: height,
            matchTextDirection: matchDirection,
            placeholderBuilder: (_) {
              return SizedBox(
                width: width,
                height: height,
                child: const _PlaceHolder(),
              );
            },
          );
        } else {
          return Image(
            image: AssetImage(imageUri!),
            width: width,
            height: height,
          );
        }
      } else if (imageUri!.startsWith("http")) {
        if (imageUri!.endsWith("svg")) {
          return SvgPicture.network(
            imageUri!,
            width: width,
            height: height,
            placeholderBuilder: (_) {
              return const _PlaceHolder();
            },
          );
        } else {
          return CachedNetworkImage(
            imageUrl: imageUri!,
            width: width,
            height: height,
            errorWidget: (_, __, ___) => const _PlaceHolder(),
            placeholder: (context, url) => const _PlaceHolder(),
          );
        }
      } else {
        return Image.file(File(imageUri!));
      }
    }
  }
}

class _PlaceHolder extends StatelessWidget {
  const _PlaceHolder();

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      addPictureIcon,
    );
  }
}
