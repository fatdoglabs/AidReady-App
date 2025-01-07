import 'package:aid_ready/core/domain/entity/locale_option.dart';
import 'package:aid_ready/features/auth/presentation/providers/auth_provider.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language_provider.g.dart';

@riverpod
class Language extends _$Language {
  @override
  LocaleOpts build() => LocaleOpts.english;

  void changeLocale(LocaleOpts locale) {
    Intl.defaultLocale = locale.value;
    ref.read(authProvider.notifier).setLocale(locale);
    state = locale;
  }
}
