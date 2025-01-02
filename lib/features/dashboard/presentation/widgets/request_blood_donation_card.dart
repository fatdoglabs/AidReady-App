import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theme/color.dart';

class RequestBloodDonationCard extends StatelessWidget {
  const RequestBloodDonationCard({Key? key, required this.onTap})
      : super(key: key);
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: EdgeInsets.fromLTRB(
          context.w(20), context.h(24.0), context.w(4.0), context.h(24.0)),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: blackColor.withOpacity(0.05),
            blurRadius: 14,
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Request Blood Donation',
                style: text14PxMedium.rubik.iconOrange,
              ),
              SizedBox(height: context.h(7.0)),
              Text(
                'Does your pet need blood?',
                style: text12PxRegular.rubik.midGrey,
              ),
              SizedBox(height: context.h(14.0)),
              Builder(builder: (context) {
                return InkWell(
                  onTap: () => onTap.call(),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(context.w(15.0),
                        context.h(10.0), context.w(12.0), context.h(9.0)),
                    decoration: BoxDecoration(
                      color: iconOrangeColor,
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                    child: Row(
                      children: [
                        Text('Request Now', style: text12PxMedium.rubik.white),
                        const SizedBox(width: 13),
                        SvgPicture.asset(
                          forwardIcon,
                          height: context.h(12.0),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
          Expanded(child: SvgPicture.asset(bloodBag)),
        ],
      ),
    );
  }
}
