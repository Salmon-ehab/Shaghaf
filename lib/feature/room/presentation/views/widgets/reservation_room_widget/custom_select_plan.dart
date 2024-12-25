import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';

class CustomRadioButton extends StatelessWidget {
  final int value;
  final int? groupValue;
  final String title;
  final IconData icon;
  final ValueChanged<int?> onChanged;

  const CustomRadioButton({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.icon,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Padding(
        padding:  EdgeInsets.only(top:15.h,),
        child: Row(
          children: [
            Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: groupValue == value ? Colors.transparent : Colors.transparent,
                border: groupValue == value
                    ? Border.all(width: 6.w, color: COLORS.color3)
                    : Border.all(width: 2.w, color: COLORS.color3),
              ),
            ),
            SizedBox(width: 12.w),
            Icon(
              icon,
              color: groupValue == value ? COLORS.color3 : Colors.grey,
            ),
            SizedBox(width: 8.w),
            Text(
              title,
              style: groupValue==value ?Styles.text28 :Styles.text29
            ),
          ],
        ),
      ),
    );
  }
}