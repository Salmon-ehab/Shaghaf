import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/styels.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/widgets/custom_item_circle.dart';

class BookingDetails extends StatelessWidget {
  const BookingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
      height: 130.h,
      width: 342.w,
      margin: EdgeInsets.only(bottom: 10.h),
      padding: EdgeInsets.only(
          top: 10.h, bottom: 8.h, left: 12.w, right: 16.w),
      decoration: BoxDecoration(
          color: COLORS.color1,
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Booking Details",style: Styles.text32,),

                CustomItemCircle(
                  texts: [
                    'Tue, 13 Feb 2024 04:00 PM',
                    'Tue, 13 Feb 2024 10:00 PM',
                  ], textStyle: Styles.text33, verticalSpacing: 20.h,
                ),
                Padding(
                  padding:  EdgeInsets.only(left:5.w),
                  child: Row(
                    children: [
                      Icon(Icons.chair_outlined,color: COLORS.color3,size: 20.sp,),
                      SizedBox(width: 8.w,),
                      Text("1 Seat",style: Styles.text34,),

                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap:(){
                  GoRouter.of(context).pop();
                },
                child: Container(
                  height: 33.h,
                  width: 77.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    color: COLORS.color3.withOpacity(.33)
                  ),
                  child: Center(child: Text("Change",style: Styles.text28,)),
                ),
              )
            ],
          )
        ],
      ),
    );

  }
}
