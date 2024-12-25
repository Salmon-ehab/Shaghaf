import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:custom_check_box/custom_check_box.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/widgets/custom_item_circle.dart';

class MembershipModel extends StatefulWidget {
   MembershipModel({super.key, required this.shouldCheck, required this.headerText, required this.texts, required this.onchanged});
   bool shouldCheck  ;
    final String headerText;
   final List<String> texts;
   final Function( bool ) onchanged;


   @override
  State<MembershipModel> createState() => _MembershipModelState();
}

class _MembershipModelState extends State<MembershipModel> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomCheckBox(

              value: widget.shouldCheck,
              shouldShowBorder: true,
              borderColor: COLORS.color42,
              checkedFillColor: COLORS.color3,
              borderRadius: 8.r,
              borderWidth: 1.w,
              checkBoxSize: 22,
              onChanged: widget.onchanged,
            ),
            Text(
              widget.headerText,
              style: Styles.text14,
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(bottom:25.h),
          child: Container(
            height: 180.h,
            width: 342.w,
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
              padding: EdgeInsets.only(left: 30.w, right: 20.w,top: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomItemCircle(
                    texts:widget.texts,
                    textStyle: Styles.text51,
                    verticalSpacing: 25.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}
