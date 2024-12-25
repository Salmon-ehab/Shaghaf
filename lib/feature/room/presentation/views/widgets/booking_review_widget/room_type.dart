import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';
import '../../../../../../core/assets/styels.dart';

class RoomType extends StatelessWidget {
  const RoomType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: 342.w,
      margin: EdgeInsets.only(top:10.h,bottom: 20.h),
      padding: EdgeInsets.only(
          top: 10.h, bottom: 10.h, left: 12.w, right: 12.w),
      decoration: BoxDecoration(
          color: COLORS.color1,
          borderRadius: BorderRadius.circular(12.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Image.asset(
                Images().trainingRoom,
                height: 100.h,
                width: 100.w,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Training room",
                style: Styles.text30,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "inside",
                style: Styles.text31,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: COLORS.color30),
                child: Center(
                  child: Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: COLORS.color29
                    ),
                    child: Icon(
                      Icons.location_on_outlined,
                      color: COLORS.color3,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

  }
}
