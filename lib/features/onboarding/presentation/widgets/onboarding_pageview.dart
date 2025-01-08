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

import '../../domain/providers/next_page_provider.dart';

class OnboardingPageView extends StatefulWidget {
  const OnboardingPageView({super.key, required this.data, this.gotoDashboard});

  final List<OnboardingItem> data;
  final VoidCallback? gotoDashboard;

  @override
  State<OnboardingPageView> createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  PageController? _pageViewController;

  @override
  void initState() {
    super.initState();
    _pageViewController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, __) {
      ref.watch(nextPageProvider);
      ref.listen(nextPageProvider, (_, index) {
        _pageViewController?.animateToPage(
          index,
          duration: const Duration(milliseconds: 200),
          curve: Curves.linear,
        );
      });

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
            onPageChanged: (index) {
              ref.read(nextPageProvider.notifier).update(index);
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
                        final current = ref.read(nextPageProvider);
                        if (current < widget.data.length - 1) {
                          ref
                              .read(nextPageProvider.notifier)
                              .update(current + 1);
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
                  index: ref.read(nextPageProvider),
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