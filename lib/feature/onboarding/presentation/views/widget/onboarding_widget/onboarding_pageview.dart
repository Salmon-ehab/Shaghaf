import 'package:flutter/material.dart';
import 'package:shagaf/feature/onboarding/data/onboarding_content.dart';
import 'package:shagaf/feature/onboarding/presentation/views/widget/onboarding_widget/onboarding_body.dart';

class OnboardingPageview extends StatefulWidget {
  OnboardingPageview({super.key});
  int currentIndex = 0;

  @override
  State<OnboardingPageview> createState() => _OnboardingPageviewState();
}

class _OnboardingPageviewState extends State<OnboardingPageview> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: pageController,
        onPageChanged: (int index) {
          setState(() {
            widget.currentIndex = index;
          });
        },
        itemCount: onboardingcontent.length,
        itemBuilder: (_, index) {
          return OnboardingBody(
            image: onboardingcontent[index].image,
            text1: onboardingcontent[index].Text1,
            text2: onboardingcontent[index].Text2,
            currindex3: widget.currentIndex,
            controlar: pageController,
          );
        });
  }
}
