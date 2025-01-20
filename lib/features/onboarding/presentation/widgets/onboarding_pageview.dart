import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/language/data/model/onboarding_item.dart';
import 'package:aid_ready/features/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:aid_ready/features/onboarding/presentation/widgets/onboarding_pageindicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key, required this.data, this.gotoDashboard});

  final List<OnboardingItem> data;
  final VoidCallback? gotoDashboard;

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  PageController? _pageViewController;
  int index = 0;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, __) {
      return Stack(
        fit: StackFit.expand,
        children: [
          PageView.builder(
            controller: _pageViewController,
            itemBuilder: (context, index) => OnboardingPage(
              image: widget.data[index].image,
              title: widget.data[index].title,
              description: widget.data[index].description,
            ),
            itemCount: widget.data.length,
            onPageChanged: (value) {
              setState(() {
                index = value;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        widget.gotoDashboard?.call();
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 4.0),
                        child: Text(
                          context.l10n.skip,
                          style: semibold.copyWith(color: primaryDark950),
                        ),
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: primary500,
                      shape: const CircleBorder(),
                      elevation: 0.0,
                      onPressed: () {
                        if (index < widget.data.length - 1) {
                          _pageViewController?.animateToPage(
                            index + 1,
                            duration: const Duration(milliseconds: 200),
                            curve: Curves.linear,
                          );
                        } else {
                          widget.gotoDashboard?.call();
                        }
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                16.verticalSpace,
                OnboardingIndicator(
                  length: widget.data.length,
                  index: index,
                ),
              ],
            ),
          )
        ],
      ).px(30.0);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageViewController?.dispose();
  }
}
