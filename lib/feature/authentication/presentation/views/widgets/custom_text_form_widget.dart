import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/assets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/styels.dart';

class CustomTextFormWidget extends StatelessWidget {
  const CustomTextFormWidget(
      {super.key,
      required this.icon,
      required this.hint,
      required this.textInputType,
      required this.security,
       this.validator, this.controller,
      });
  final IconData icon;
  final String hint;
  final TextInputType textInputType;
  final bool security;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      //height: 50.h,
      child: TextFormField(
        textAlign: TextAlign.justify,
        validator: validator,
        controller: controller,
        obscureText: security,
        cursorColor: COLORS.color10,
        decoration: InputDecoration(

            contentPadding:
                EdgeInsets.symmetric(vertical: 5.0.h, horizontal: 10.0.w),
            fillColor: COLORS.color1,
            filled: true,
            prefixIcon: Icon(
              icon,
              color: COLORS.color8,
              size: 18.sp,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  13.r), // الحفاظ على الشكل عند التركيز والخطأ
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.5.w,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                  13.r), // الحفاظ على الشكل عند التركيز والخطأ
              borderSide: BorderSide(
                color: Colors.red,
                width: 1.5.w,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide(
                color: COLORS.color9,
                width: 1.5.w,
              ),
            ),
            hintText: hint,
            hintStyle: Styles.text5,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(13.r),
              borderSide: BorderSide(
                color: COLORS.color9,
                width: 1.5.w,
              ),
            )),
      ),
    );
  }
}
