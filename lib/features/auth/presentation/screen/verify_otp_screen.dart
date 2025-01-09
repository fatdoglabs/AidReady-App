import 'package:aid_ready/core/routes/router.gr.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../core/widgets/input_field.dart';

@RoutePage()
class VerifyOtpScreen extends StatelessWidget {
  const VerifyOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          context.l10n.verification,
          style: semibold.copyWith(fontSize: 18.0),
          textAlign: TextAlign.center,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          33.verticalSpace,
          Text(
            context.l10n.otpVerification,
            style: bold.copyWith(fontSize: 24.0, color: primaryDark950),
            textAlign: TextAlign.center,
          ),
          15.verticalSpace,
          Text(
            context.l10n.otpMessage,
            style: regular.copyWith(color: primaryDark400),
            textAlign: TextAlign.center,
          ),
          30.verticalSpace,
          PinCodeTextField(
            scrollPadding: EdgeInsets.zero,
            useHapticFeedback: true,
            // errorTextMargin: EdgeInsets.zero,
            appContext: context,
            textStyle: light.copyWith(color: primaryDark950, fontSize: 40.0),
            pastedTextStyle:
                light.copyWith(color: primaryDark950, fontSize: 40.0),
            length: 4,
            obscuringCharacter: '*',
            blinkWhenObscuring: true,
            animationType: AnimationType.fade,
            pinTheme: PinTheme(
              borderWidth: 2,
              inactiveColor: primaryDark300,
              selectedColor: primary500,
              activeColor: primary500,
              shape: PinCodeFieldShape.underline,
              borderRadius: BorderRadius.circular(0),
              fieldHeight: 60.0,
              fieldWidth: 60.0,
              fieldOuterPadding: EdgeInsets.zero,
            ),

            //cursorColor: greyG100,
            animationDuration: const Duration(milliseconds: 300),
            //errorAnimationController: errorController,
            //controller: codeController,
            keyboardType: TextInputType.number,
            onCompleted: (v) async {},
            // onChanged: (value) => ref
            //     .read(verifyOTPFormNotifierProvider.notifier)
            //     .setOTP(codeController.text),
            beforeTextPaste: (text) {
              return true;
            },
          ),
          16.verticalSpace,
          ActionButton.primary(
            onPressed: () {
              context.router.replace(const SetPasswordRoute());
            },
            child: Center(
              child: Text(
                context.l10n.verifyProceed,
                style: medium.copyWith(color: Colors.white),
              ),
            ),
          ),
          16.verticalSpace,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: regular.copyWith(fontSize: 12.0, color: primaryDark810),
              children: [
                TextSpan(text: context.l10n.didntRecieveOtp),
                TextSpan(
                    text: context.l10n.resendOtp,
                    style: semibold.copyWith(color: primary500),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        context.router.maybePop();
                      }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
