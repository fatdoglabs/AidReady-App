import 'package:flutter/material.dart';

const Color primaryColor = const Color(0xFFE77386);
const Color redColor = const Color(0xFFFF5959);
const List<Color> backgroundGradient = const <Color>[
  Color(0xFFFAD594),
  Color(0xFFFDA084),
  Color(0xFFEE7BC7),
];

const List<Color> notificationBackgroundGradient = const <Color>[
  Color(0xFF2074F3),
  Color(0xFF48A1F1),
  Color(0xFF73B7F6),
  Color(0xFFA9C7EA),
  Color(0xFFE3EBF3),
  Color(0xFFFFFFFF),
];

const Color orangeColor = Color(0xFFFDA385);
const Color facebookBgColor = Color(0xFF1877F2);
const Color blackColor = Color(0xFF000000);
const Color buttonColor = Color(0xFF181818);
const Color whiteColor = Color(0xFFFFFFFF);
const Color iconOrangeColor = Color(0xFFFB8A76);
const Color iconOrangeLightColor = Color(0xFFFFE3E3);
const Color lightOrangeColor = Color(0xFFFFE8DE);
const Color softOrangeColor = Color(0xffFFE1DC);
const Color lightYellowColor = Color(0xffA6BF0A);

const Color midGreyColor = const Color(0xFF989898);
const Color grey10 = const Color(0xFFE6E4EA);
const Color greyColor = const Color(0xFFDDDDDD);
const Color lightGreyColor = const Color(0xFFD6D6D6);
const Color grey400 = const Color(0xff98A5AF);
const Color disabled = const Color(0xffF1F1F1);
const Color darkGreyColor = const Color(0xFF989898);
const Color stokeLightOrangeColor = const Color(0xFFFFF4EF);
const Color greenColor = const Color(0xFF49CF95);
const Color lightGreen = const Color(0xFFE3FFDE);

const Color hintTextColor = const Color(0xFFE0E5E9);
const Color inputBorderColor = const Color(0xFFFFE8De);
const Color errorInputBorderColor = const Color(0xFFFF5959);
const Color lightBorderColor = const Color(0xffFFE8DE);
const Color lightOrange = const Color(0xffFFE8DE);
const Color orange200Color = const Color(0xffFBAB9C);
const Color orange100Color = const Color(0xffF9E9E9);
const Color darkRedColor = const Color(0xffEC9A9A);
const Color lightStokeOrangeColor = const Color(0xffFFF4EF);

const LinearGradient circleGradient = const LinearGradient(
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
  stops: [0, 0.55, 1],
  colors: const [
    Color(0xFFF2C2AD),
    Color(0xFFE98690),
    Color(0xFFE56981),
  ],
  transform: GradientRotation(3.14159),
);
const LinearGradient circleLightGradient = const LinearGradient(
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
  stops: [0, 0.55, 1],
  colors: const [
    Color(0xFFFCFAF9),
    Color(0xFFFAEFEA),
    Color(0xFFF6E3DB),
  ],
  transform: GradientRotation(3.14159),
);
const LinearGradient linearGradient = const LinearGradient(
  begin: FractionalOffset.topRight,
  end: FractionalOffset.bottomRight,
  stops: [0, 0.55, 1],
  colors: backgroundGradient,
  transform: GradientRotation(0.610865),
);
const LinearGradient linearGradientNotification = const LinearGradient(
  begin: FractionalOffset.centerRight,
  end: FractionalOffset.topCenter,
  // stops: [0, 0.55, 1],
  colors: notificationBackgroundGradient,
  transform: GradientRotation(0.7853982),
);
const LinearGradient primaryGradient = const LinearGradient(
  begin: FractionalOffset.topCenter,
  end: FractionalOffset.bottomCenter,
  colors: [
    Color(0xFFFBCA92),
    Color(0xFFEF7EC2),
  ],
);
const LinearGradient progressGradient = LinearGradient(
  begin: Alignment.centerRight,
  end: Alignment.centerLeft,
  stops: [0, 0.7, 1],
  colors: [
    Color(0xfff2c2ad),
    Color(0xffe98690),
    Color(0xffe56981),
  ],
);
const Color lightRed = Color(0xffFFE8DE);
const Color themeRed = Color(0xffE77386);
const Color grey = Color(0xffF5F5F4);
const Color scaffoldBackgroundColor = Color(0xffF9F7F3);

//vaccine records colors
const Color vaccineRecordBackground = Color(0xff46CEDA);
const Color nearestHospitalBackground = Color(0xffFB8A76);
const Color firstAidBackground = Color(0xffB593E7);
const Color donationCenterBackground = Color(0xff7F9CEB);
const Color textHint = const Color(0xff474747);
const Color iconLightColor = const Color(0xffFB8A76);
const Color dividerColor = const Color(0xffE0E5E9);

const blueColor = const Color(0xFF80B1FF);
const darkBlueColor = const Color(0xFF7A9BF1);

const Color lightBrown = const Color(0xffF4F1EC);
const yellowColor = const Color(0xFFF2C94C);
const lightYellow = const Color(0xfff8efe0);
const Color lightBlack = const Color(0xff263238);

const Color transparent = Colors.transparent;
const lightBoxShadow = const Color(0xff7676760D);

const Color defaultSnackBarBg = const Color(0xE61F2834);
const Color errorSnackBarBg = const Color(0xE6FF5959);
const Color lightSoftBorderColor = const Color(0xffF0F0F0);
const Color softLightColor = Color(0xffEFFDF7);
const Color softWhiteColor = Color(0xffF8F8F8);

const Color softYellowColor = Color(0xffE7C224);
const Color softGreenColor = Color(0xff78E7B3);
const Color softIndigoColor = Color(0xff8E8EE5);

const Color softLigthGrey = Color(0xffDADADA);
const Color softMidGray = Color(0xff828282);
const Color softButtonBlack = Color(0xff828282);
const Color softPurple = Color(0xff9176B9);
const Color indigo = Color(0xff9A67E5);
const Color softIndigo = Color(0xffF0E7FF);
const Color softWhite = Color(0xffFBF8FF);

const Color black = Color(0xff000000);
const Color white = Color(0xffFFFFFF);
const Color primaryBlue = Color(0xff1e36d3);
const Color primaryGreen = Color(0xff01d393);
const Color primaryWhite = Color(0xfff5f5ff);
const Color secondaryBlue = Color(0xff8f9be9);
const Color secondaryBlue10 = Color(0xffd8e1fb);
const Color secondaryBlue30 = Color(0x4d8f9be9);
const Color errorTextColor = Color(0xffed4c5c);
const Color black10 = Color(0x26000000);
const Color black20 = Color(0xff0a0a0a);
const Color black30 = Color(0xff181818);
const Color black40 = Color(0xff404040);
const Color black50 = Color(0xffc2c2c2);
const Color black60 = Color(0xff9e9e9e);
const Color black80 = Color(0xff616161);
const Color black90 = Color(0xff60667b);
const Color black100 = Color(0xffeff6f4);
const Color black110 = Color(0xff333333);
const Color black120 = Color(0xff5f5f5f);
const Color black130 = Color(0xffa6a6a6);
const Color black140 = Color(0xff9e9e9e);
const Color black150 = Color(0xffededed);
const Color black160 = Color(0xfff0f1f6);
const Color black170 = Color(0xff616161);
const Color black180 = Color(0xff404040);
const Color blue10 = Color(0xffd4d4ff);
const Color blue20 = Color(0x181e36d3);
const Color blue30 = Color(0xff0c23b6);
const Color blue40 = Color(0xffe0eef9);
const Color blue50 = Color(0xffd5def4);
const Color blue60 = Color(0xff94a3ca);
const Color green10 = Color(0xffdcfaef);
const Color green20 = Color(0xffe8fbf5);
const Color green30 = Color(0xff12edab);
const Color white10 = Color(0xffa3a6aa);
const Color white20 = Color(0xffe4e5ea);
const Color white30 = Color(0xfff4f5fe);
const Color white40 = Color(0xffbbbbbb);
const Color amber10 = Color(0xfffff2ed);
const Color amber20 = Color(0xffffe500);
const Color violet10 = Color(0xfff1e8ff);
