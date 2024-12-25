import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/images.dart';
import '../../../../../../core/go_route.dart';
import '../../../../../../core/widgets/custom_appbar2.dart';
import '../offer_event_model.dart';

class EventBody extends StatelessWidget {
  const EventBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:  EdgeInsets.only(top:50.h,left: 15.w, right: 15.w, bottom: 20.h),
        child: Column(
          children: [
            CustomAppbar2(text: "Events"),
            SizedBox(height: 20.h,),
            GridView.count(
              padding: EdgeInsets.zero, // Remove padding
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.w,
              crossAxisCount: 2,
              shrinkWrap: true, // يسمح باستخدام GridView داخل ScrollView
              physics: NeverScrollableScrollPhysics(), // منع التمرير في GridView
              children: List.generate(12, (index) {
                return OfferEventModel(
                  image: Images().events,
                  text1: null,
                  text2: '''Positive education
workshop''', onCall:() {
                  GoRouter.of(context).push(AppRouter.eventsDetailsScreen);
                },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}