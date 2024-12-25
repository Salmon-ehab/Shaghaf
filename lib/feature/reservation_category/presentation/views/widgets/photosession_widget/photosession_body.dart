import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/widgets/custom_appbar.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/widgets/birthday&photo_model.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../data/item_data.dart';

class PhotoSessionBody extends StatefulWidget {
  PhotoSessionBody({super.key});

  @override
  State<PhotoSessionBody> createState() => _PhotoSessionBodyState();
}

class _PhotoSessionBodyState extends State<PhotoSessionBody> {
  int grandTotalSalary =0;
  void initState() {
    super.initState();
    updateGrandTotalSalary();

  }

  void updateGrandTotalSalary() {
    grandTotalSalary = Item.photoSession.fold(0, (total, photo) {
      return total + photo.totalSalary;
    });
    setState(() {}); // تحديث الواجهة
  }
  void dispose() {
    for (var photo in Item.photoSession) {
      photo.isPressed = false;
      photo.totalSalary = 0;
    }
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w,bottom: 30.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Column(
          children: [
            CustomAppbar(text: "Photo Session"),
            SizedBox(
              height: 20.h,
            ),

            ...Item.photoSession.sublist(0, 3).map((photoSession) {
              return BirthdayPhotoModel(

                image: photoSession.image,
                text1: photoSession.text1,
                text2: photoSession.text2,
                isbirthday: false,
                style: Styles.text51, item: photoSession, salary: photoSession.Salary, onTap: () {
                setState(() {
                  photoSession.isPressed =true;
                  photoSession.totalSalary =photoSession.Salary;
                  updateGrandTotalSalary();
                });
              }, updateGrandTotal: updateGrandTotalSalary
              );
            }).toList(),

          ],
        ),
          if (Item.photoSession.any((item) => item.isPressed  ))
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
