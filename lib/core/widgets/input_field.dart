import 'package:aid_ready/core/mixins/validation_mixin.dart';
import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../theme/styles.dart';

class InputField extends StatefulWidget {
  const InputField({
    super.key,
    this.labelText,
    this.label,
    this.hint,
    this.maxLines,
    this.initialValue,
    this.prefixIcon,
    this.suffixIcon,
    this.errMessage,
    this.onChanged,
    this.onUserInputChanged,
    this.onTap,
    this.readOnly = false,
    this.validateErrors = true,
    this.inputType,
    this.controller,
    this.formatters = const [],
  }) : obscureText = false;

  InputField.password({
    super.key,
    this.labelText,
    this.label,
    this.hint,
    this.initialValue,
    this.prefixIcon,
    this.errMessage,
    this.onChanged,
    this.onUserInputChanged,
    this.onTap,
    this.readOnly = false,
    this.validateErrors = true,
    this.inputType,
    this.formatters = const [],
  })  : obscureText = true,
        maxLines = 1,
        suffixIcon = SvgPicture.asset(passwordToggleOffIcon),
        controller = null;

  final int? maxLines;
  final String? labelText;
  final String? initialValue;
  final String? hint;
  final String? errMessage;
  final Widget? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? obscureText;
  final bool? readOnly;
  final bool validateErrors;
  final Function(String)? onChanged;
  final Function(String)? onUserInputChanged;
  final VoidCallback? onTap;
  final TextInputType? inputType;
  final TextEditingController? controller;
  final List<TextInputFormatter> formatters;

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> with ValidationMixin {
  TextEditingController? _inputController;
  late bool obscureText;
  Widget? suffixIcon;

  @override
  void initState() {
    super.initState();
    obscureText = widget.obscureText ?? false;
    suffixIcon = widget.suffixIcon;
    _inputController =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    _inputController!.addListener(() {
      widget.onChanged?.call(_inputController!.value.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.label != null
            ? widget.label!
            : widget.labelText != null
                ? Text(
                    widget.labelText!,
                    style: semibold.copyWith(fontSize: 12.0),
                  ).pOnly(bottom: 8.0)
                : const SizedBox.shrink(),
        TextFormField(
          maxLines: widget.maxLines,
          readOnly: widget.readOnly ?? false,
          style: semibold.copyWith(color: primaryDark700),
          controller: _inputController,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            fillColor: primaryDark50,
            filled: true,
            hintText: widget.hint,
            hintStyle: light.copyWith(color: primaryDark200),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: primary500,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: primary100,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            prefixIconConstraints: BoxConstraints.tight(const Size(42.0, 42.0)),
            suffixIconConstraints: suffixIcon is SvgPicture
                ? BoxConstraints.tight(const Size(32.0, 32.0))
                : null,
            suffixIcon: getSuffixWidget(),
          ),
          inputFormatters: widget.formatters,
          onTap: widget.onTap,
          keyboardType: widget.inputType,
          onChanged: (value) {
            widget.onUserInputChanged?.call(value);
          },
        ),
        // widget.validateErrors
        //     ? widget.errMessage.isNotNullNotEmpty
        //         ? Container(
        //             margin: const EdgeInsets.only(top: 2.0),
        //             child: Text(
        //               widget.errMessage!,
        //               style: errTextStyle,
        //             ),
        //           )
        //         : const SizedBox(
        //             height: 10.0,
        //           )
        //     : const SizedBox.shrink(),
      ],
    );
  }

  @override
  void didUpdateWidget(InputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    _inputController?.text = widget.initialValue ?? "";
  }

  Widget? getSuffixWidget() {
    if (suffixIcon is SvgPicture) {
      return GestureDetector(
        onTap: () {
          if (obscureText) {
            if (_inputController!.text.isNotEmpty) {
              setState(() {
                suffixIcon = SvgPicture.asset(passwordToggleOnIcon);
                obscureText = false;
              });
            }
          } else {
            if (_inputController!.text.isNotEmpty) {
              setState(() {
                suffixIcon = SvgPicture.asset(passwordToggleOffIcon);
                obscureText = true;
              });
            }
          }
        },
        child: suffixIcon,
      ).pOnly(right: 10);
    }
    return suffixIcon;
  }

  @override
  void dispose() {
    if (widget.controller == null) _inputController?.dispose();
    super.dispose();
  }
}
