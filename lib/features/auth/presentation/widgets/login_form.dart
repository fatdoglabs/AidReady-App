import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final form = ref.watch(loginFormNotifierProvider);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InputField(
          hint: context.l10n.emailHint,
          prefixIcon: SvgPicture.asset(emailRedIcon),
          // errMessage: form.enrollmentId.value.isNotEmpty
          //     ? form.enrollmentId.isValid
          //         ? null
          //         : context.l10n.enrollmentidinvalid
          //     : null,
          onChanged: (value) {
            //ref.read(loginFormNotifierProvider.notifier).setId(value);
          },
        ).px(16.0),
        20.verticalSpace,
        InputField.password(
          hint: context.l10n.enterPassword,
          prefixIcon: SvgPicture.asset(
            passwordIcon,
          ),
          suffixIcon: SvgPicture.asset(passwordToggleOffIcon),
          // errMessage: form.password.value.isNotEmpty
          //     ? form.password.isValid
          //         ? null
          //         : context.l10n.passwordinvalid
          //     : null,
          onChanged: (value) {
            //ref.read(loginFormNotifierProvider.notifier).setPassword(value);
          },
        ).px(16.0),
      ],
    );
  }
}
