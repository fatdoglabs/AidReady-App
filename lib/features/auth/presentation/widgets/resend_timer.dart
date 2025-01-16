import 'dart:async';

import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:flutter/material.dart';

class ResendTimer extends StatefulWidget {
  const ResendTimer({
    super.key,
    this.onRetry,
  });

  final VoidCallback? onRetry;

  @override
  State<ResendTimer> createState() => _ResendTimerState();
}

class _ResendTimerState extends State<ResendTimer> {
  Timer? _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final effectiveStyle =
        _start == 0 ? bold.copyWith(color: danger500) : medium;
    final value = _start == 0
        ? context.l10n.resend
        : "${context.l10n.resend} (${_start}s)";
    return GestureDetector(
      onTap: _start == 0
          ? () {
              widget.onRetry?.call();
              _start = 60;
              startTimer();
            }
          : null,
      child: Container(
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(
          left: 8.0,
        ),
        child: Text(
          value,
          style: effectiveStyle,
        ),
      ),
    );
  }

  void startTimer() {
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
