import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/assets/styels.dart';

class BookingModel extends StatelessWidget {
  const BookingModel(
      {super.key,
      required this.roomName,
      required this.date,
      required this.time,
      required this.seats,
      required this.deposit,
      required this.reastOfMoney,
      required this.coffee,
      required this.status});
  final String roomName;
  final String date;
  final String time;
  final String seats;
  final String deposit;
  final String reastOfMoney;
  final String coffee;
  final String? status;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 20.h),
      child: Container(
        height: 258.h,
        width: 355.w,
        padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 15.h),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // لون الظل
            offset: const Offset(0.0, 2.0), // ظل فقط في الأسفل
            blurRadius: 3.0.r, // حجم الضبابية
            spreadRadius: 0.0, // عدم انتشار الظل
          ),

        ], color: COLORS.color1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$roomName",
              style: Styles.text46,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      height: 20.h,
                      Images().date,
                      color: COLORS.color3,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Date",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$date",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      height: 20.h,
                      Images().time,
                      color: COLORS.color3,
                    ),
                    SizedBox(width: 4.w),

                    Text(
                      "Time",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$time",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.chair_outlined,
                      color: COLORS.color3,
                      size: 18.sp,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Seats",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$seats",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      height: 20.h,
                      Images().money_alt,
                      color: COLORS.color3,

                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Deposit",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$deposit",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      height: 20.h,
                      Images().money_alt,
                      color: COLORS.color3,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "The rest of the money",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$reastOfMoney",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 5.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      height: 25.h,
                      Images().coffee2,
                      color: COLORS.color3,
                    ),
                    SizedBox(width: 4.w),
                    Text(
                      "Coffee",
                      style: Styles.text44,
                    ),
                  ],
                ),
                Text(
                  "$coffee",
                  style: Styles.text45,
                )
              ],
            ),
            SizedBox(height: 8.h,),
            status != null?  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Booking Status",
                  style: Styles.text44,
                ),
                Text(
                  "$status",
                  style: Styles.text47,
                )
              ],
            ):SizedBox(height: 0.h,),
          ],
        ),
      ),
    );
  }
}
