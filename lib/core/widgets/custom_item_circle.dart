import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dotted_line/dotted_line.dart';
import '../assets/colors.dart';

class CustomItemCircle extends StatelessWidget {
  final List<String> texts;
  final TextStyle textStyle;
  final double verticalSpacing; // المسافة الرأسية بين كل نقطة والنص

  CustomItemCircle({
    required this.texts,
    required this.textStyle,
    required this.verticalSpacing ,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // عمود النقاط والخطوط
        Column(
          children: List.generate(texts.length, (index) {
            return Column(
              children: [
                // النقطة
                Container(
                  width: 10.w,
                  height: 10.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: COLORS.color3,
                  ),
                ),
                // الخط المتقطع
                if (index < texts.length - 1)
                  DottedLine(
                    direction: Axis.vertical,
                    dashColor: Colors.red, // لون الخط المتقطع
                    lineThickness: 1.0, // سماكة الخط
                    dashLength: 4.0, // طول كل نقطة
                    dashGapLength: 4.0, // المسافة بين النقاط
                    lineLength:verticalSpacing+(verticalSpacing/1.5).h, // ارتفاع الخط
                  ),
              ],
            );
          }),
        ),
        SizedBox(width: 10.w), // المسافة بين النقاط والنصوص
        // النصوص
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: texts.map((text) {
              return Padding(
                padding: EdgeInsets.only(bottom: verticalSpacing), // مسافة أسفل النص
                child: Text(
                  text,
                  style: textStyle,
                  maxLines: 3,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}