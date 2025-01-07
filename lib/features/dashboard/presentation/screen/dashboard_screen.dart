import 'package:aid_ready/core/utils/extensions/context.dart';
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
    final tabs = [
      context.l10n.bloodDonation,
      context.l10n.nearestHospitals,
    ];
    return Scaffold(body: Text('dashboard'));
  }
}
