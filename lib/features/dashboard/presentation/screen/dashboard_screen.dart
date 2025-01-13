import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_appbar.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_decoration.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/family_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/nearby_request_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/news_updates_list.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/request_blood_donation_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

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
            const DashboardAppbar().sliver(),
            const RequestBloodDonationCard().sliver(),
            const NearbyRequestList().sliver(),
            const FamilyList().sliver(),
            const NewsUpdatesList().sliver()
          ],
        ),
      ),
    );
  }
}
