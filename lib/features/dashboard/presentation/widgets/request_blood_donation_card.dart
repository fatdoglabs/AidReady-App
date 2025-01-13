import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RequestBloodDonationCard extends StatelessWidget {
  const RequestBloodDonationCard({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.only(left: 20.0, top: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Request Blood Now',
                  style: bold.copyWith(fontSize: 16.0, color: secondary950),
                ),
                12.verticalSpace,
                Text(
                  '"Need blood urgently? Post a request and connect with donors nearby."',
                  maxLines: 2,
                  style:
                      regular.copyWith(color: primaryDark600, fontSize: 12.0),
                ),
                12.verticalSpace,
                ActionButton.primary(
                  child: Text(
                    textAlign: TextAlign.start,
                    'Request Now',
                    style:
                        semibold.copyWith(fontSize: 16.0, color: Colors.white),
                  ).px(25.0),
                ).pOnly(bottom: 20.0),
              ],
            ),
          ),
          ClipRRect(
            borderRadius:
                const BorderRadius.only(bottomRight: Radius.circular(20.0)),
            child: SvgPicture.asset(requestBloodBgIcon),
          ),
        ],
      ),
    );
  }
}
