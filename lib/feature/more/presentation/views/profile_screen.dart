import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/profile_widget/profile_body.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: ProfileBody(),
    );
  }
}
