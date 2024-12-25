import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/styels.dart';

class CustomAppbar extends StatelessWidget {
   CustomAppbar({ required this.text});
   final String text;

  @override
  Widget build(BuildContext context) {
  return  Padding(
    padding:  EdgeInsets.only(right:5.w,),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          }, icon: Icon(Icons.arrow_back_ios,size: 20.sp,),),
          SizedBox(width: 80.w),
          Text("$text",style: Styles.text18)
        ],
      ),
  );
  }
}
