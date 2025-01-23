import 'dart:ui' as ui;
import 'package:aid_ready/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class NoRequestDecoration extends Decoration {
  const NoRequestDecoration({this.image});

  final ui.Image? image;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _ContainerDecorationPainter(image: image);
}

class _ContainerDecorationPainter extends BoxPainter {
  _ContainerDecorationPainter({this.image});

  final ui.Image? image;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final bounds = configuration.size;
    final width = bounds!.width;
    final height = bounds.height;
    Paint paint = Paint()
      ..color = danger100
      ..style = PaintingStyle.fill;
    canvas.drawColor(Colors.white, BlendMode.src);
    canvas.drawCircle(offset + Offset(width, 0.0), 42.0, paint);
    if (image != null) {
      canvas.drawImage(image!, offset, paint);
    }
  }
}
