import 'package:aid_ready/core/utils/extensions/ui.dart';
import 'package:aid_ready/features/dashboard/presentation/widgets/dashboard_appbar.dart';
import 'package:aid_ready/features/dashboard/home/widgets/family_list.dart';
import 'package:aid_ready/features/dashboard/home/widgets/nearby_request_list.dart';
import 'package:aid_ready/features/dashboard/home/widgets/news_updates_list.dart';
import 'package:aid_ready/features/dashboard/home/widgets/request_blood_donation_card.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const DashboardAppbar().sliver(),
        const RequestBloodDonationCard().sliver(),
        const NearbyRequestList().sliver(),
        const FamilyList().sliver(),
        const NewsUpdatesList().sliver()
      ],
    );
  }
}
