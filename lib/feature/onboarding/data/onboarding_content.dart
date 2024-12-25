import 'package:shagaf/core/assets/images.dart';

class OnboardingContent{
  final String image;
  final String Text1;
  final String Text2;

  OnboardingContent({required this.image, required this.Text1, required this.Text2});
}

List<OnboardingContent> onboardingcontent =[
  OnboardingContent(image: Images().onboarding1, Text1: "Your favorite place to work", Text2: "In Shaghaf Co-working space, we provide a place that makes you more productive, enjoyable and comfortableA place made up of different parts"),
  OnboardingContent(image: Images().onboarding2, Text1: "Delightful open air", Text2: "You can choose a game to play from the many games we have , sit at a comfortable base, or take pictures in the different places that have been specially made to take beautiful pictures."),
  OnboardingContent(image: Images().onboarding3, Text1:"Choose your favorite room", Text2: "You can find the right room for your current mood, as we have many rooms that meet all needs, You can move between funny room, training room and meeting room"),
  
];