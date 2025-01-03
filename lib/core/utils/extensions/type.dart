import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

extension NumX on num {
  double get toRadian => (this.toDouble() * (pi / 180)).toDouble();

  Duration get microseconds => Duration(microseconds: toInt());

  Duration get milliseconds => Duration(milliseconds: toInt());

  Duration get seconds => Duration(seconds: toInt());

  Duration get minutes => Duration(minutes: toInt());

  Duration get hours => Duration(hours: toInt());

  Duration get days => Duration(days: toInt());

  Future get delayedMicroSeconds async => Future.delayed(toInt().microseconds);

  Future get delayedMilliSeconds async => Future.delayed(toInt().milliseconds);

  Future get delayedSeconds async => Future.delayed(toInt().seconds);

  Future get delayedMinutes async => Future.delayed(toInt().minutes);

  Future get delayedHours async => Future.delayed(toInt().hours);

  Radius get circular => Radius.circular(toDouble());

  BorderRadiusGeometry get rounded => BorderRadius.circular(toDouble());

  EdgeInsets get all => EdgeInsets.all(toDouble());

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: toDouble());

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: toDouble());

  SizedBox get verticalSpace => SizedBox(height: toDouble());

  SizedBox get horizontalSpace => SizedBox(width: toDouble());
}

extension StringNullX on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullNotEmpty => this != null && this!.isNotEmpty;

  String capitalize() =>
      this![0].toUpperCase() + this!.substring(1, this!.length);

  String formatPhone() {
    String input = this!;
    if (input.length > 8) {
      return '${input.substring(0, 2)}-${input.substring(2, 5)}-${input.substring(5, input.length)}';
    } else {
      return input;
    }
  }

  DateTime decodeDateString(BuildContext context) {
    if (this != null && this!.isNotEmpty) {
      //if (this == context.l10n.dateOfBirth) return DateTime.now();

      const List<String> names = [
        'Jan',
        'Feb',
        'Mar',
        'Apr',
        'May',
        'Jun',
        'Jul',
        'Aug',
        'Sept',
        'Oct',
        'Nov',
        'Dec'
      ];
      List<String> elements = this!.split(' ');
      int day = int.tryParse(elements[0]) ?? 0;
      String month = elements[1];
      int monthIndex = names.indexWhere((element) => element == month);
      int year = int.tryParse(elements[2]) ?? 0;
      return DateTime(year, monthIndex + 1, day);
    }
    return DateTime.now();
  }

  Future<ui.Image> getImageDataFromAsset(int width) async {
    ByteData data = await rootBundle.load(this!);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }
}
