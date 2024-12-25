import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_item_circle.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';
import 'book_widget.dart';

class EventsDetails extends StatelessWidget {
  const EventsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 300.h),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: 550.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.r),
                  topRight: Radius.circular(35.r)),
              color: COLORS.color1),
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 20.w, top: 20.h),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Details", style: Styles.text19),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomItemCircle(
                          texts: [
                            "We will learn how to make ceramics and use them after that",
                            'The workshop will last for one day and last 3 hours. We will learn about it',
                            "We will learn about the types of clay to differentiate the final result of the product",
                            "How do I make shapes with clay without them cracking?",
                            "We will burn the shapes we made and find out how they burn so that you can use them after that and live with you",

                          ],
                          textStyle: Styles.text51,
                          verticalSpacing: 40.h,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        BookNowWidget()
      ]),
    );
  }
}
