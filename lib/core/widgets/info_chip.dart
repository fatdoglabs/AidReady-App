import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  const InfoChip({
    super.key,
    required this.child,
    required this.color,
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: child,
    );
  }
}
