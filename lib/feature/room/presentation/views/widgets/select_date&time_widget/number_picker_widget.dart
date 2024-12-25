import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/select_date&time_widget/Am_Pm_widget.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';

class NumberPickerWidget extends StatefulWidget {
  const NumberPickerWidget({super.key});

  @override
  State<NumberPickerWidget> createState() => _NumberPickerWidgetState();
}

class _NumberPickerWidgetState extends State<NumberPickerWidget> {
  var hour = 0;
  var minute = 0;
  var timeFormat = "AM";
  int selectedIndex = 0; // متغير لحفظ حالة الاختيار (0: AM, 1: PM)

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        NumberPicker(
          minValue: 0,
          maxValue: 12,
          value: hour,
          zeroPad: true,
          infiniteLoop: true,
          itemWidth: 25.w,
          itemHeight: 30.h,
          onChanged: (value) {
            setState(() {
              hour = value;
            });
          },
          textStyle:  TextStyle(color: COLORS.color25, fontSize: 13.sp),
          selectedTextStyle:
               TextStyle(color: COLORS.color26, fontSize: 18.sp),
        ),
        SizedBox(
          width: 30.w,
        ),
        Text(
          ":",
          style: Styles.text30,
        ),
        SizedBox(
          width: 30.w,
        ),
        NumberPicker(
          minValue: 0,
          maxValue: 59,
          value: minute,
          zeroPad: true,
          infiniteLoop: true,
          itemWidth: 25.w,
          itemHeight: 30.h,
          onChanged: (value) {
            setState(() {
              minute = value;
            });
          },
          textStyle:  TextStyle(color: COLORS.color25, fontSize: 13.sp),
          selectedTextStyle:
               TextStyle(color: COLORS.color26, fontSize: 18.sp),
        ),
        SizedBox(
          width: 20.w,
        ),
        Container(
          width: 40.w,
          height: 100.h, // Set a specific height for the container
          child: ListWheelScrollView.useDelegate(
            perspective: .005,
            diameterRatio: 1.2,
            itemExtent: 25,
            physics: FixedExtentScrollPhysics(),
            onSelectedItemChanged: (index) {
              setState(() {
                selectedIndex = index;
              });
            },            childDelegate: ListWheelChildBuilderDelegate(
                childCount: 2,
                builder: (context, index) {
                  return AmPmWidget(
                    isAm: index == 0,
                    textColor: selectedIndex == index ? Colors.black : Colors.grey,
                  );
                }),
          ),
        )
      ],
    );
  }
}
