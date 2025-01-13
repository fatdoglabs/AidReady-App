import 'package:aid_ready/core/theme/color.dart';
import 'package:aid_ready/core/theme/styles.dart';
import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/core/widgets/action_button.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_appbar.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_decoration.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/family_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/nearby_request_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/news_updates_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/request_blood_donation_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        child: CustomScrollView(
          slivers: [
            DashboardAppbar().sliver(),
            RequestBloodDonationCard().sliver(),
            NearbyRequestList().sliver(),
            FamilyList().sliver(),
            NewsUpdatesList().sliver()
          ],
        ),
      ),
    );
  }
}
