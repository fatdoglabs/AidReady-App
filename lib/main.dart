import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/core/domain/providers/language_provider.dart';
import 'package:aid_ready/core/routes/router.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/services/injector.dart';

void main() async {
  await injectDependencies();
  runApp(const ProviderScope(child: AidApp()));
}

class AidApp extends ConsumerWidget {
  const AidApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = getIt<AidRouter>();
    final localOpts = ref.watch(languageProvider);
    return MaterialApp.router(
      title: kAppName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: AppLocalizations.supportedLocales.firstWhere((locale) {
        String selected = localOpts.value;
        return locale.languageCode == selected;
      }, orElse: () => Locale(LocaleOpts.english.value)),
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          unselectedWidgetColor: primary500),
      routerDelegate: router.delegate(),
      routeInformationParser: router.defaultRouteParser(),
      routeInformationProvider: router.routeInfoProvider(),
    );
  }
}
