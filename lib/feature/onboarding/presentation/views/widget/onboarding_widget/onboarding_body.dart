import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/feature/onboarding/presentation/views/widget/onboarding_widget/dots_list_view.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/go_route.dart';
import '../../../../data/onboarding_content.dart';

class OnboardingBody extends StatefulWidget {
   OnboardingBody(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,required this.currindex3, required this.controlar});
  final String image;
  final String text1;
  final String text2;
    int currindex3;
   final PageController controlar;
   @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {


  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.loginView);
                }, child: Text("Skip", style: Styles.text3)),
          ],
        ),
        Padding(
          padding: EdgeInsets.only( left: 20.w, right: 20.w),
          child: Container(
            height: 670.h,
            width: 350.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(widget.image, height: 350.h, width: 350.w),
                SizedBox(height: 14.h,),
                Center(
                    child: Text(
                  widget.text1,
                  style: Styles.text1,
                  textAlign: TextAlign.center,
                )),
                SizedBox(height: 10.h,),
                Text(
                  widget.text2,
                  style: Styles.text2,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18.h,),
                DotsListView(currindex: widget.currindex3, dotCount: onboardingcontent.length),
                SizedBox(height: 15.h,),
                FloatingActionButton(
                  backgroundColor: COLORS.color6,
                  elevation: 1,

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r)
                  ),
                  onPressed: () {
                    // Move to the next page
                    if (widget.currindex3 < onboardingcontent.length -1 ) {
                      widget.controlar.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      // If it's the last page, you can navigate to another screen
                      GoRouter.of(context).push(AppRouter.loginView);
                    }
                  },
                  child: Icon(Icons.arrow_forward,color: COLORS.color1,),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
