import 'dart:ui' as ui;

import 'package:aid_ready/core/theme/color.dart';
import 'package:flutter/material.dart';

class AddFamilyDecoration extends Decoration {
  const AddFamilyDecoration({this.image});

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
    Paint paint = Paint()
      ..color = secondary50
      ..style = PaintingStyle.fill;
    canvas.drawColor(Colors.white, BlendMode.src);
    canvas.drawCircle(offset, 75.0, paint);
  }
}
