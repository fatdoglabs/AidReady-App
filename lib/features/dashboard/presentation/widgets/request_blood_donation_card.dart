import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/context.dart';
import 'package:aid_ready/core/utils/extensions/type.dart';
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
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 12.0,
            spreadRadius: 4.0,
            color: containerShadow,
          )
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  context.l10n.requestBloodNow,
                  style: bold.copyWith(fontSize: 16.0, color: secondary950),
                ),
                12.verticalSpace,
                Text(
                  '"${context.l10n.postBloodRequestMessage}"',
                  maxLines: 2,
                  style:
                      regular.copyWith(color: primaryDark600, fontSize: 12.0),
                ),
                12.verticalSpace,
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 20.0),
                  child: ActionButton.primary(
                    width: 180.0,
                    height: 30.0,
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        context.l10n.requestNow,
                        style: semibold.copyWith(
                            fontSize: 16.0, color: Colors.white),
                      ),
                    ),
                  ),
                )
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
