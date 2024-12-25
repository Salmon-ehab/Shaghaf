import 'package:flutter/cupertino.dart';
import 'package:shagaf/feature/onboarding/presentation/views/widget/onboarding_widget/build_dots.dart';

class DotsListView extends StatelessWidget {
  final int currindex;
  final int dotCount;

  const DotsListView({required this.currindex, required this.dotCount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotCount, (index) {
        return BuildDots(currindex1: currindex, index1: index);
      }),
    );
  }
}
