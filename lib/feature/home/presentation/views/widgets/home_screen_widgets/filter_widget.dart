import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/assets/styels.dart';

class FilterWidget extends StatelessWidget {
   FilterWidget({super.key, required this.text, required this.ontap});
   final String text;
   final Function() ontap;

   @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding:  EdgeInsets.only(left: 3.w,right: 3.w,bottom: 15.h),
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(
            color: COLORS.color11,
            borderRadius:BorderRadius.circular(15.r)
          ),
          child:MaterialButton(onPressed:ontap,child:Text(text,style:Styles.text15)),
        ),
      ),
    );
  }
}
