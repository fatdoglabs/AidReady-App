import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/features/auth/presentation/widgets/resend_timer.dart';
import 'package:aid_ready/features/auth/presentation/widgets/verify_button.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RetryablePinField extends StatefulWidget {
  const RetryablePinField({
    super.key,
    this.onRetry,
    this.onVerify,
  });

  final VoidCallback? onRetry;
  final Function(String)? onVerify;

  @override
  State<RetryablePinField> createState() => _RetryablePinFieldState();
}

class _RetryablePinFieldState extends State<RetryablePinField> {
  TextEditingController? controller;
  String pin = "";

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinCodeTextField(
          controller: controller,
          scrollPadding: EdgeInsets.zero,
          useHapticFeedback: true,
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
          animationDuration: const Duration(milliseconds: 300),
          keyboardType: TextInputType.number,
          beforeTextPaste: (text) {
            return true;
          },
          onCompleted: (value) {
            setState(() {
              pin = value;
            });
          },
        ),
        Row(
          children: [
            Expanded(
              child: false
                  // ignore: dead_code
                  ? Text(
                      context.l10n.wrongOtpTryAgain,
                      style: regular.copyWith(color: danger600, fontSize: 12.0),
                    )
                  : const SizedBox.shrink(),
            ),
            ResendTimer(
              onRetry: () {
                controller?.clear();
                widget.onRetry?.call();
              },
            ),
          ],
        ),
        VerifyButton(
          isEnabled: pin.length == 4,
          onPressed: () {
            widget.onVerify?.call(pin);
          },
        ),
      ],
    );
  }
}
