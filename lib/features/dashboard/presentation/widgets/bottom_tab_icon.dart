import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
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
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: kToolbarHeight,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 10.0),
          decoration: BoxDecoration(
            color: primaryDark40,
            borderRadius: BorderRadius.circular(58.0),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 5),
                blurRadius: 24.0,
                spreadRadius: 0.0,
                color: containerShadow2,
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              20.horizontalSpace,
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
          ),
        ),
        Container(
          width: 52.0,
          height: 52.0,
          margin: const EdgeInsets.only(bottom: 36.0),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: primary500,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  offset: Offset(2, 2),
                  blurRadius: 15.0,
                  spreadRadius: 11.0,
                  color: primary700,
                ),
              ]),
          child: const PictureView(
            imageUri: locationWhiteIcon,
            width: 30.0,
            height: 30.0,
          ),
        ),
      ],
    );
  }
}
