import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/assets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/styels.dart';
import 'otp_widget.dart';

class VerifiyContainer extends StatelessWidget {
  const VerifiyContainer({super.key});

  @override
  Widget build(BuildContext context) {
  return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: COLORS.color12,
      ),
      padding:
      EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h, bottom: 15.h),
      height: 330.h,
      width: 345.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Enter Verification Code", style: Styles.text4),
          SizedBox(height: 20.h),
          Text("Enter code that we have sent to your Email ", style: Styles.text12),
          Text("1234567***", style: Styles.text11),
          SizedBox(height: 40.h),
          OTPScreen(),
          SizedBox(height: 10.h),
        ],
      ),
    );  }
}
