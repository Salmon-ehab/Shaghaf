import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/widgets/membership_widget/membership_body.dart';

class MembershipScreen extends StatelessWidget {
  const MembershipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: MembershipBody(),
    );
  }
}
