import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  const InfoChip(
      {super.key,
      required this.child,
      required this.color,
      this.padding =
          const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0)});

  final Widget child;
  final Color color;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: child,
    );
  }
}
