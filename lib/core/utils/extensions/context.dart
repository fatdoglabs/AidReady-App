import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../theme/color.dart';

extension ContextX on BuildContext {
  //width & height
  double get width => MediaQuery.sizeOf(this).width;

  double get height => MediaQuery.sizeOf(this).height;

  double w(double width) {
    const kReferenceWidth = 428.0;
    return width * (MediaQuery.of(this).size.width / kReferenceWidth);
  }

  double h(double height) {
    const kReferenceHeight = 882.0;
    return height * (MediaQuery.of(this).size.height / kReferenceHeight);
  }

  double sp(double fontSize) {
    return MediaQuery.of(this).textScaler.scale(fontSize);
  }

  // TextDirection direction(LocaleOpts opts) {
  //   if (opts.value == LocaleOpts.english.value ||
  //       opts.value == LocaleOpts.bangladeshi.value) {
  //     return TextDirection.ltr;
  //   } else {
  //     return TextDirection.rtl;
  //   }
  // }

  AppLocalizations get l10n => AppLocalizations.of(this)!;

  AppBar curvedAppBar({Widget? child, List<Widget> actions = const []}) {
    return AppBar(
      backgroundColor: primaryBlue,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0))),
      leadingWidth: 36.0,
      leading: Container(
        margin: const EdgeInsetsDirectional.only(start: 20.0),
        child: InkWell(
          onTap: () {
            Navigator.of(this).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: white,
          ),
        ),
      ),
      title: child,
      actions: actions,
    );
  }

  void snack(String? message,
      {Duration duration = const Duration(seconds: 1)}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          duration: duration,
          content: Text(message ?? this.l10n.genericerr),
        ),
      );
  }

  Future<DateTime?> showDatePickerOverLay(
      {DateTime? initialDateTime, bool isIOS = false}) async {
    var initialDate = initialDateTime;
    initialDate ??= DateTime.now();
    if (isIOS) {
      initialDate = await showCupertinoModalPopup<DateTime?>(
        context: this,
        builder: (context) {
          var newDate = DateTime.now();
          return ColoredBox(
            color: Colors.black,
            child: Container(
              height: 300 + kToolbarHeight,
              color: black20,
              child: StatefulBuilder(
                builder: (context, setState) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 300,
                        child: CupertinoDatePicker(
                            backgroundColor: black20,
                            initialDateTime: initialDate,
                            mode: CupertinoDatePickerMode.date,
                            dateOrder: DatePickerDateOrder.dmy,
                            maximumDate: DateTime(2040, 1, 1),
                            onDateTimeChanged: (val) {
                              setState(() => newDate = val);
                            }),
                      ),

                      // Close the modal
                      CupertinoButton(
                        child: const Text('Ok'),
                        onPressed: () => Navigator.of(this).pop(newDate),
                      )
                    ],
                  );
                },
              ),
            ),
          );
        },
      );
      return initialDate;
    } else {
      final firstDate = initialDateTime ?? DateTime.now();
      final lastDate = DateTime(2040, 1, 1);
      final dateTime = await showDatePicker(
        context: this,
        initialEntryMode: DatePickerEntryMode.calendarOnly,
        initialDate: initialDate,
        firstDate: firstDate,
        lastDate: lastDate,
        cancelText: "",
      );
      return dateTime;
    }
  }

  // Future<NotificationSettings> requestNotification() =>
  //     FirebaseMessaging.instance.requestPermission();

  // Future<void> showNotification({
  //   required int id,
  //   required String title,
  //   required String body,
  //   String? payload,
  // }) async {
  //   final androidPlatformChannelSpecifics = AndroidNotificationDetails(
  //     kChannelId,
  //     kChannelName,
  //     channelDescription: kChannelDescription,
  //     importance: Importance.max,
  //     priority: Priority.high,
  //     ticker: kChannelTicker,
  //     icon: kIconName,
  //     styleInformation: BigTextStyleInformation(body),
  //     color: black,
  //   );
  //   const DarwinNotificationDetails iOSPlatformChannelSpecifics =
  //       DarwinNotificationDetails(
  //     presentAlert: true,
  //     presentBadge: true,
  //     presentSound: true,
  //   );
  //   await getIt<FlutterLocalNotificationsPlugin>().show(
  //     id,
  //     title,
  //     body,
  //     NotificationDetails(
  //       android: androidPlatformChannelSpecifics,
  //       iOS: iOSPlatformChannelSpecifics,
  //     ),
  //     payload: payload,
  //   );
  // }
}
