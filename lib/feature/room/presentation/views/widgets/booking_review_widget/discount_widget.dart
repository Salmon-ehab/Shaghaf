import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/images.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';

class DiscountWidget extends StatelessWidget {
  const DiscountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.h,
      width: 342.w,
      margin: EdgeInsets.only(top: 10.h, bottom: 20.h),
      padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
      decoration: BoxDecoration(
          color: COLORS.color1, borderRadius: BorderRadius.circular(12.r)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 15.w, right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discounts Available", style: Styles.text35),
                InkWell(
                  onTap:(){},
                  child: Container(
                    height: 33.h,
                    width: 99.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        color: COLORS.color3.withOpacity(.33)),
                    child: Center(
                        child: Text(
                      "Add promo",
                      style: Styles.text28,
                    )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Container(
                height: 42.h,
                width: 293.w,
                padding: EdgeInsets.only(left: 5.w, right: 5.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.r),
                  color: COLORS.color1,
                  border: Border.all(
                    color: COLORS.color10.withOpacity(.25), // لون الحدود
                    width: 1.w, // سمك الحدود
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      Images().discount,
                      height: 20.h,
                      color: COLORS.color10,
                    ),
                    Text(
                      "30% off  10 booking (up to EGP 150)",
                      style: Styles.text37,
                    ),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        height: 26.h,
                        width: 63.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: COLORS.color3.withOpacity(.33)),
                        child: Center(
                            child: Text(
                          "Apply",
                          style: Styles.text28,
                        )),
                      ),
                    )
                  ],
                )),
          ),
          Divider(height: 25.h, thickness: 1.1),
          Padding(
            padding:  EdgeInsets.only(left: 15.w),
            child: Text("Booking Charges", style: Styles.text35),
          ),
          Divider(height: 25.h, thickness: 1.1),
          Padding(
            padding:  EdgeInsets.only(left: 15.w,right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("x1 Day EGP 100.0 x 1 Seat",style: Styles.text38,),
                Text("EGP 100.0",style: Styles.text38,),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          Padding(
            padding:  EdgeInsets.only(left: 15.w,right: 15.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total Due",style: Styles.text39,),
                Text("EGP 100.0",style: Styles.text39,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
