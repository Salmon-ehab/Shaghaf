import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/onboarding/presentation/views/widget/onboarding_widget/onboarding_pageview.dart';

class OnboardingScreen extends StatefulWidget {
   OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color4,
      body: OnboardingPageview(),
    );
  }
}
