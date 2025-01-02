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
    this.label,
    this.hint,
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
    this.formatters = const [],
  })  : obscureText = true,
        maxLines = 1,
        controller = null;

  final int? maxLines;
  final String? label;
  final String? initialValue;
  final String? hint;
  final String? errMessage;
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
        TextFormField(
          maxLines: widget.maxLines,
          readOnly: widget.readOnly ?? false,
          cursorColor: primaryGreen,
          controller: _inputController,
          obscureText: obscureText,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            fillColor: white,
            filled: true,
            hintText: widget.hint,
            hintStyle: text14PxRegular.rubik.grey,
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: primaryGreen, width: 2.0),
              borderRadius: BorderRadius.circular(16.0),
            ),
            prefixIcon: widget.prefixIcon!.px(10.0),
            prefixIconConstraints: BoxConstraints.tight(const Size(42.0, 42.0)),
            suffixIconConstraints: BoxConstraints.tight(const Size(32.0, 32.0)),
            suffixIcon: suffixIcon != null
                ? GestureDetector(
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
                            suffixIcon =
                                SvgPicture.asset(passwordToggleOffIcon);
                            obscureText = true;
                          });
                        }
                      }
                    },
                    child: suffixIcon,
                  ).pOnly(right: 10)
                : const SizedBox.shrink(),
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
  void dispose() {
    if (widget.controller == null) _inputController?.dispose();
    super.dispose();
  }
}