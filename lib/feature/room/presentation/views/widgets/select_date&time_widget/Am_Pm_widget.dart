import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/assets/colors.dart';

class AmPmWidget extends StatelessWidget {
  const AmPmWidget({super.key, required this.isAm, required this.textColor});
 final bool isAm;
 final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(isAm ==true ?"AM":"PM",style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
            fontFamily: GoogleFonts.comfortaa().fontFamily,
          color:textColor
        ),),
      ),
    );
  }
}
