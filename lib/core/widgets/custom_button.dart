import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:go_router/go_router.dart';
import '../assets/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.height,
      required this.width,
      this.onTap});
  final String text;
  final double height;
  final double width;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13.r),
          color: COLORS.color6,
        ),
        height: height,
        width: width,
        child: Center(child: Text(text, style: Styles.text9)),
      ),
    );
  }
}
