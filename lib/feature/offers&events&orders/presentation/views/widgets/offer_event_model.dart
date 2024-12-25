import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/assets/styels.dart';

class OfferEventModel extends StatelessWidget {
  const OfferEventModel(
      {super.key,
      required this.image,
       this.text1,
      required this.text2, required this.onCall});
  final String image;
  final String? text1;
  final String text2;
  final Function() onCall;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 176.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: COLORS.color1,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // لون الظل
              offset: const Offset(0.0, 4.0), // ظل فقط في الأسفل
              blurRadius: 3.0.r, // حجم الضبابية
              spreadRadius: 0.0, // عدم انتشار الظل
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12.r), topRight: Radius.circular(12.r)),
            child: Image.asset(image,
                fit: BoxFit.cover, height: 108.h, width: double.infinity),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 5.h, left: 6.w, right: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               text1 !=null ? Text(
                  text1!,
                  style: Styles.text48,
                ):SizedBox(height: 0.h,),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '''$text2
                        ''',
                      style: Styles.text49,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    InkWell(
                      onTap:onCall,
                      child: CircleAvatar(
                        backgroundColor: COLORS.color3,
                        radius: 12.r,
                        child: Icon(
                          size: 15.sp,
                          Icons.arrow_forward,
                          color: COLORS.color1,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
