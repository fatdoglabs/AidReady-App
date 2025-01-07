import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/domain/providers/language_provider.dart';
import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/task_button.dart';
import 'package:aid_ready/features/language/presentation/widgets/language_list.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/providers/onboarding_provider.dart';

@RoutePage()
class LanguageSelectionScreen extends StatelessWidget {
  const LanguageSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (_, ref, __) {
        ref.listen(onboardingProvider, (previous, next) {
          next.whenOrNull(
            data: (items) async {
              if (items.isEmpty) {
                context.router.replace(const AuthRoute());
              } else {
                ///since onboarding model item before and after precaching shares the same data state in onboardingNotifierProvider
                ///this if block ensures that the precaching is only done the first time when the onboarding items are returned from the api
                ///after the first time, the 'cached' field in the item is always true skipping the precaching thus preventing an INFINITE LOOP
                if (items.every((item) {
                  return item.cached == true;
                })) return;

                await Future.wait(items.map((item) async {
                  if (item.image != null) {
                    await precacheImage(
                        CachedNetworkImageProvider(item.image!), context,
                        onError: (_, __) {});
                  }
                }).toList());
                ref.read(onboardingProvider.notifier).onPreCachingComplete();
                context.router.push(OnboardingRoute(items: items));
              }
            },
            error: (_, __) {
              context.router.replace(const AuthRoute());
            },
          );
        });
        return Stack(
          children: [
          
            LanguageList(
              onEnglish: () {
                ref
                    .read(languageProvider.notifier)
                    .changeLocale(LocaleOpts.english);
              },
              onNepali: () {
                ref
                    .read(languageProvider.notifier)
                    .changeLocale(LocaleOpts.nepali);
              },
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 64.0),
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: context.h(48.0),
                child: TaskButton(
                  color: primary500,
                  onPressed: () {
                    ref.read(onboardingProvider.notifier).getOnBoardingItems();
                  },
                  child: Center(
                    child: Text(
                      context.l10n.next,
                      style: regular.copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ).px(16.0);
      }),
    );
  }
}
