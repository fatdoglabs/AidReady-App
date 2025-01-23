import 'package:flutter/material.dart';

class AuthTab extends StatelessWidget {
  const AuthTab({
    Key? key,
    required this.title,
    required this.onChange,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;
  final String title;
  final VoidCallback? onChange;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChange?.call(),
      child: Container(
        height: kToolbarHeight,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(
                width: 2.0,
                color: isActive ? Colors.black : Colors.transparent),
          ),
        ),
        child: Text(
          title,
          textAlign: TextAlign.center,
          // style: isActive
          //     ? text14PxSemiBold.rubik.black.lineHeight(19.6)
          //     : text14PxSemiBold.rubik.midGrey.lineHeight(19.6),
        ),
      ),
    );
  }
}
