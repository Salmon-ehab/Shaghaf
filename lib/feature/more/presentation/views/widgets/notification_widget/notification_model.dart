import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/assets/styels.dart';

class NotificationModel extends StatelessWidget {
  const NotificationModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82.h,
      width: 350.w,
      margin: EdgeInsets.only(bottom: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(image: AssetImage(Images().events),fit: BoxFit.fill,)
                    ),
                  )
                ],
              ),
              SizedBox(width:5.w ,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    Text("Ceramics workshop Event",style: Styles.text56,),
                  Row(
                    children: [
                      Text("today",style: Styles.text57,),
                      SizedBox(width: 10.w,),
                      Text("12:05 pm",style: Styles.text58,)
                    ],
                  )
                ],
              )
            ],
          ),
       SizedBox(height: 8.h,),
       Divider(height: 0,thickness: 1.2,color: COLORS.color46,),
        ],
      ),
    );
  }
}
