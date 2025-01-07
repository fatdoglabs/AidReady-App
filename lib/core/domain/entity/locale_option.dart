import 'package:aid_ready/core/theme/assets.dart';

enum LocaleOpts {
  english('English', 'en', flagUsIcon),
  nepali('नेपाली', 'ne', flagNpIcon);

  const LocaleOpts(this.label, this.value, this.icon);
  final String label;
  final String value;
  final String icon;
}
