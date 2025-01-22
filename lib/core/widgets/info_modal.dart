import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:flutter/material.dart';

class InfoModal extends StatelessWidget {
  const InfoModal({
    super.key,
    required this.children,
    this.callToActionTop,
    this.callToActionBottom,
  });

  final List<Widget> children;
  final Widget? callToActionTop;
  final Widget? callToActionBottom;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.all(5.0),
            child: callToActionTop ?? const SizedBox.shrink(),
          ),
          ...children,
          25.verticalSpace,
          callToActionBottom ?? const SizedBox.shrink(),
        ],
      ),
    );
  }
}
