import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';
import 'package:flutter/material.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 342.w,
      margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
      padding:
          EdgeInsets.only(top: 10.h, bottom: 10.h, left: 15.w, right: 16.w),
      decoration: BoxDecoration(
          color: COLORS.color1, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Payment Method", style: Styles.text35),
              SizedBox(height:5.h,),
              Text("You will not be debited until your booking is confirmed", style: Styles.text36),
            ],
          ),
          Row(
            children: [
              CircleAvatar(
                radius: 8.r,
                backgroundColor: COLORS.color3, // لون الخط
                child: Icon(
                  Icons.check,
                  size: 11.sp,
                  color: COLORS.color1,
                ),
              ),
              SizedBox(width: 8.w,),
              Text("Add card", style: Styles.text36),

            ],
          )
        ],
      ),
    );
  }
}
