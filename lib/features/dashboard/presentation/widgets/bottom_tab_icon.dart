import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({super.key, this.onTabClick});

  final Function(int)? onTabClick;

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              index = 0;
              widget.onTabClick?.call(index);
            });
          },
          child: PictureView(
            imageUri: index == 0 ? activeHomeIcon : inActiveHomeIcon,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              index = 1;
              widget.onTabClick?.call(index);
            });
          },
          child: PictureView(
            imageUri: index == 1 ? activeFamilyIcon : inActiveFamilyIcon,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              index = 2;
              widget.onTabClick?.call(index);
            });
          },
          child: PictureView(
            imageUri: index == 2 ? activeFamilyIcon : inActiveFamilyIcon,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              index = 3;
              widget.onTabClick?.call(index);
            });
          },
          child: PictureView(
            imageUri: index == 3 ? activeFamilyIcon : inActiveFamilyIcon,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              index = 4;
              widget.onTabClick?.call(index);
            });
          },
          child: PictureView(
            imageUri: index == 4 ? activeFamilyIcon : inActiveFamilyIcon,
          ),
        ),
      ],
    );
  }
}
