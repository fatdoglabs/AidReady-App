import 'package:aid_ready/core/theme/color.dart';
import 'package:flutter/material.dart';

class DashboardDecoration extends Decoration {
  const DashboardDecoration({this.height});

  final double? height;

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) =>
      _ContainerDecorationPainter(height);
}

class _ContainerDecorationPainter extends BoxPainter {
  _ContainerDecorationPainter(this.height);

  final double? height;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    final bounds = configuration.size;
    final width = bounds!.width;
    final effectiveHeight = height ?? (bounds.height / 4.0);
    Paint paint = Paint()
      ..color = primary500
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.5;
    //canvas.drawColor(black160, BlendMode.src);
    canvas.drawRRect(
        RRect.fromLTRBAndCorners(0.0, 0.0, width, effectiveHeight,
            bottomLeft: const Radius.circular(30.0),
            bottomRight: const Radius.circular(30.0)),
        paint);
    
  }
}
