import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/widgets/custom_appbar.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/widgets/birthday&photo_model.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../data/item_data.dart';

class BirthdayBody extends StatefulWidget {
   BirthdayBody({super.key});

  @override
  State<BirthdayBody> createState() => _BirthdayBodyState();
}

class _BirthdayBodyState extends State<BirthdayBody> {
  int  grandTotalSalary =0;

  void updateGrandTotalSalary() {
    grandTotalSalary = Item.Cakes.fold(0, (total, cake) {
      return total + cake.totalSalary;
    }) + Item.Decoration.fold(0, (total, decoration) {
      return total + decoration.totalSalary;
    });
    setState(() {}); // تحديث الواجهة
  }

  void dispose() {
    for (var cake in Item.Cakes) {
      cake.isPressed = false;
      cake.totalSalary = 0;
    }
    for (var decoration in Item.Decoration) {
      decoration.isPressed = false;
      decoration.totalSalary = 0;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(text: "Birthday"),
          Container(
            height: 62.h,
            width: 342.w,
            margin: EdgeInsets.only(top: 10.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(12.r)),
              color: COLORS.color1,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.9), // لون الظل
                  offset: Offset(2, 7), // إزاحة رأسية 3 وحدات
                  blurRadius: 5.r,
                  spreadRadius: -1,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 5.w, top: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: CircleAvatar(
                      backgroundColor: COLORS.color3,
                      radius: 4.r,
                    ),
                  ),
                  SizedBox(width: 5.w),
                  SizedBox(
                    width: 280.w,
                    child: Text(
                      'You can buy them from anywhere else without any cost or services',
                      style: Styles.text51,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text("Cakes", style: Styles.text14),
          SizedBox(
            height: 8.h,
          ),
          ...Item.Cakes.sublist(0, 3).map((Cakes) {
            return BirthdayPhotoModel(
              image: Cakes.image,
              text1: Cakes.text1,
              text2: Cakes.text2,
              isbirthday: true,
              style: Styles.text48, item: Cakes, salary: Cakes.Salary, onTap: () {
                setState(() {
                  Cakes.isPressed =true;
                  Cakes.number++;
                  Cakes.totalSalary = Cakes.Salary * Cakes.number;
                  updateGrandTotalSalary();

                });
            }, updateGrandTotal: updateGrandTotalSalary
              ,
            );
          }).toList(),
          SizedBox(height: 10.h),
          Text("Decoration", style: Styles.text14),
          SizedBox(
            height: 8.h,
          ),
          ...Item.Decoration.sublist(0, 2).map((decoration) {
            return BirthdayPhotoModel(
              image: decoration.image,
              text1: decoration.text1,
              text2: decoration.text2,
              isbirthday: true,
              style: Styles.text51, item: decoration, salary: decoration.Salary,
              onTap: () {
                setState(() {
                  decoration.number++;
                  decoration.isPressed = true;
                  decoration.totalSalary = decoration.Salary * decoration.number;
                  updateGrandTotalSalary();
                });
              }, updateGrandTotal: updateGrandTotalSalary
            );
          },).toList(),
          SizedBox(
            height: 20.h,
          ),
          if (Item.Cakes.any((item) => item.isPressed  || Item.Decoration.any((item) => item.isPressed  )))// تحقق إذا كان أي عنصر مضغوط
            Container(
              padding: EdgeInsets.only(left: 30.w,right: 30.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13.r),
                color:COLORS.color6 ,
              ),
              height: 40.h,
              width:342.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Loading",style: Styles.text9),
                  Text("EGP $grandTotalSalary",style: Styles.text9),

                ],
              ),
            ),

        ],
      ),
    );
  }
}
