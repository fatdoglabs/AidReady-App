import 'package:aid_ready/features/dashboard/presentation/widgets/request_blood_donation_card.dart';
import 'package:flutter/material.dart';

class BloodDonationScreen extends StatelessWidget {
  const BloodDonationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RequestBloodDonationCard(onTap: () {}),
      ],
    );
  }
}
