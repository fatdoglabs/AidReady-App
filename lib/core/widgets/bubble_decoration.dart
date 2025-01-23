import 'dart:ui' as ui;
import 'package:aid_ready/core/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BubbleDecoration extends Decoration {
  const BubbleDecoration();

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _ContainerDecorationPainter();
}

class _ContainerDecorationPainter extends BoxPainter {
  _ContainerDecorationPainter();

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final bounds = configuration.size;
    final width = bounds!.width;
    final height = bounds.height;
    Paint bubble1Paint = Paint()
      ..color = secondary50
      ..style = PaintingStyle.fill;
    Paint bubble2Paint = Paint()
      ..color = primary100
      ..style = PaintingStyle.fill;

    canvas.drawCircle(
        Offset(width * 1.15, bounds.height * 1.05), 135.0, bubble1Paint);

    canvas.drawCircle(Offset(-80.0, bounds.height * 0.7), 135.0, bubble2Paint);
  }
}
