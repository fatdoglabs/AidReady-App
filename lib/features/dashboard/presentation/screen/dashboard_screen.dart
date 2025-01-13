import 'package:aid_ready/core/theme/assets.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/picture_view.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_appbar.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_decoration.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/family_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/nearby_request_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/news_updates_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/request_blood_donation_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../../core/theme/color.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const DashboardDecoration(),
        child: Stack(
          children: [
            CustomScrollView(
              slivers: [
                const DashboardAppbar().sliver(),
                const RequestBloodDonationCard().sliver(),
                const NearbyRequestList().sliver(),
                const FamilyList().sliver(),
                const NewsUpdatesList().sliver()
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: kToolbarHeight,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                margin:
                    const EdgeInsets.only(left: 20, right: 20.0, bottom: 10.0),
                decoration: BoxDecoration(
                  color: primaryDark40,
                  borderRadius: BorderRadius.circular(58.0),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 24.0,
                      spreadRadius: 0.0,
                      color: containerShadow2,
                    )
                  ],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PictureView(
                      imageUri: activeHomeIcon,
                    ),
                    PictureView(
                      imageUri: inActiveFamilyIcon,
                    ),
                    PictureView(
                      imageUri: inActiveProfileIcon,
                    ),
                    PictureView(
                      imageUri: inActiveProfileIcon,
                    ),
                    PictureView(
                      imageUri: inActiveProfileIcon,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
