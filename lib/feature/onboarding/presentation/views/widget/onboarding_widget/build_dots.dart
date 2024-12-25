import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/colors.dart';


class BuildDots extends StatelessWidget {
  final int currindex1;
  final int index1;

  const BuildDots({required this.currindex1, required this.index1});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.0.w),
      child: Container(
        height: 15.0.h,
        width: 15.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: currindex1 == index1 ? COLORS.color3 : COLORS.color5,
        ),
      ),
    );
  }
}