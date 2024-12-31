import 'package:flutter/material.dart';

import '../../theme/color.dart';

extension WidgetX on Widget {
  // decorated circular
  BorderRadiusGeometry rounded(double radius) => BorderRadius.circular(radius);

  Padding px(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Padding py(double padding) => Padding(
        padding: EdgeInsets.symmetric(vertical: padding),
        child: this,
      );

  Padding pOnly({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) =>
      Padding(
        padding: EdgeInsetsDirectional.only(
          top: top,
          end: right,
          bottom: bottom,
          start: left,
        ),
        child: this,
      );

  Padding pad(double value) => Padding(
        padding: EdgeInsets.all(value),
        child: this,
      );

  Container mBottom(double value) => Container(
        margin: EdgeInsets.only(bottom: value),
        child: this,
      );

  CustomScrollView scrollable() => CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Center(child: this),
          )
        ],
      );

  SliverToBoxAdapter sliver() => SliverToBoxAdapter(
        child: this,
      );

  Directionality directionality(TextDirection direction) =>
      Directionality(textDirection: direction, child: this);
}

extension TextStyleX on TextStyle {
  TextStyle get eveleth => copyWith(fontFamily: 'Eveleth');

  TextStyle get rubik => copyWith(fontFamily: 'Rubik');

  //colors
  TextStyle get primary => copyWith(color: primaryColor);

  TextStyle get red => copyWith(color: redColor);

  TextStyle get blue => copyWith(color: blueColor);

  TextStyle get green => copyWith(color: greenColor);

  TextStyle get iconOrange => copyWith(color: iconOrangeColor);

  TextStyle get black => copyWith(color: blackColor);

  TextStyle get facebookColor => copyWith(color: facebookBgColor);

  TextStyle get button => copyWith(color: buttonColor);

  TextStyle get white => copyWith(color: whiteColor);

  TextStyle get midGrey => copyWith(color: midGreyColor);

  TextStyle get grey => copyWith(color: greyColor);

  //TextStyle get grey400 => copyWith(color: grey400);

  TextStyle get darkGrey => copyWith(color: darkGreyColor);
  TextStyle get indigoColor => copyWith(color: indigo);

  TextStyle get hintText => copyWith(color: hintTextColor);

  TextStyle get yellow => copyWith(color: lightYellowColor);
  TextStyle get sortMidGrayColor => copyWith(color: softMidGray);
  TextStyle get softButtonBlackColor => copyWith(color: softButtonBlack);

  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);

  //TextStyle spacing(double value) => copyWith(letterSpacing: calculateSpacing(value));
}

extension SizeX on Size {
  // Shimmer shimmer() {
  //   return Shimmer.fromColors(
  //     baseColor: black10,
  //     highlightColor: white,
  //     child: Container(
  //       height: height,
  //       width: width,
  //       decoration: BoxDecoration(
  //         borderRadius: BorderRadius.circular(12.0),
  //         color: Colors.white,
  //       ),
  //     ),
  //   );
  // }
}

// extension AppExtensionX on AppException {
//   Widget error() {
//     if (statusCode == no_internet_code) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Icon(Icons.error),
//           Text(message ?? ''),
//         ],
//       );
//     } else {
//       if (identifier == deverr) {
//         return const Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.error),
//             Text(kDebugMode
//                 ? 'Bad Response'
//                 : 'Something went wrong. Please try again!'),
//           ],
//         );
//       } else {
//         return const Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.error),
//             Text('Bad Response'),
//           ],
//         );
//       }
//     }
//   }
// }