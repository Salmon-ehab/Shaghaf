import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/core/widgets/custom_button.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';
import '../../../../../../core/assets/styels.dart';
import 'custom_select_plan.dart';

class SelectPlanSheet extends StatefulWidget {
  const SelectPlanSheet({super.key});

  @override
  State<SelectPlanSheet> createState() => _SelectPlanSheetState();
}

class _SelectPlanSheetState extends State<SelectPlanSheet> {
  int? _selectedValue = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.r),
          topRight: Radius.circular(35.r),
        ),
        color: COLORS.color1,
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 15.h, bottom: 15.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Select your plan", style: Styles.text26),
            SizedBox(height: 5.h),
            CustomRadioButton(
              value: 1,
              groupValue: _selectedValue,
              title: '60.0 EGP/Hour',
              icon: Icons.access_time,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomRadioButton(
              value: 2,
              groupValue: _selectedValue,
              title: '500.0 EGP/Day',
              icon: Icons.calendar_today,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomRadioButton(
              value: 3,
              groupValue: _selectedValue,
              title: '8,000.0 EGP/Month',
              icon: Icons.date_range,
              onChanged: (int? newValue) {
                setState(() {
                  _selectedValue = newValue;
                });
              },
            ),
            SizedBox(height: 16.h),
            CustomButton(
                text: "Select Date",
                onTap: (){
                  GoRouter.of(context).push(AppRouter.selectDate);
                },                height: 40.h,
                width: 340.w),
          ],
        ),
      ),
    );
  }
}
