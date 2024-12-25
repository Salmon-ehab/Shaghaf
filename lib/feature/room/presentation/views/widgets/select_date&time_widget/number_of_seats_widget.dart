import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';

class NumberOfSeatsWidget extends StatefulWidget {
  const NumberOfSeatsWidget({super.key});

  @override
  State<NumberOfSeatsWidget> createState() => _NumberOfSeatsWidgetState();
}

class _NumberOfSeatsWidgetState extends State<NumberOfSeatsWidget> {
  int x = 1;
  bool isOne = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10.h),
      height: 60.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(0.0, 2.0),
            blurRadius: 5.0.r,
            spreadRadius: 0.0,
          ),
        ],
        color: COLORS.color1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.account_circle_outlined,
                color: COLORS.color27,
              ),
              SizedBox(width: 10.w),
              Text(
                "Number of seats",
                style: Styles.text18,
              ),
            ],
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    if (x > 2) {
                      x--;
                    } else {
                      isOne = true;
                      x = 1;
                    }
                  });
                },
                child: Container(
                  padding: EdgeInsets.only(left: 3.w, right: 3.w),
                  width: 27.w,
                  height: 27.h,
                  decoration: BoxDecoration(
                    color: COLORS.color1,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isOne
                          ? COLORS.color11.withOpacity(.5)
                          : COLORS.color11,
                      width: isOne ? 1.3 : 1.5,
                    ),
                  ),
                  child: Center(
                      child: Divider(
                          height: 10.h,
                          thickness: 3.w,
                          color: isOne
                              ? COLORS.color11.withOpacity(.5)
                              : COLORS.color11)),
                ),
              ),
              SizedBox(width: 15.w),
              Container(
                alignment: Alignment.center, // تأكد من أن النص يتوسط
                child: Text("$x", style: Styles.text18),
              ),
              SizedBox(width: 15.w),
              InkWell(
                onTap: () {
                  setState(() {
                    x++;
                    isOne = false;
                  });
                },
                child: Container(
                  width: 27.w,
                  height: 27.h, // تأكد من أن الطول متساوي
                  decoration: BoxDecoration(
                    color: COLORS.color1,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: COLORS.color11,
                      width: 1.3.w,
                    ),
                  ),
                  child: Center(
                    // استخدم Center هنا أيضًا
                    child: Icon(
                      Icons.add,
                      color: COLORS.color11,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
