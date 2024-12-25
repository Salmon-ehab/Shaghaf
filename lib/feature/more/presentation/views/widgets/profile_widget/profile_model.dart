import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';

class ProfileModel extends StatelessWidget {
  const ProfileModel({super.key, required this.content, this.icon, required this.needIcon});
    final String content;
    final IconData? icon;
    final bool needIcon ;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31.h,
       width: 342.w,
       margin: EdgeInsets.only(top: 10.h,bottom: 20.h),
       padding: EdgeInsets.only(left: 15.w),
       decoration: BoxDecoration(
         color: COLORS.color1,
             border: Border.all(color: COLORS.color10.withOpacity(.50)),
         borderRadius: BorderRadius.circular(10.r)
       ),
       child: Row(
         children: [
           needIcon ==true ?Icon(icon,color: COLORS.color8,size: 15.sp,):SizedBox.shrink(),
           needIcon ==true ?SizedBox(width: 5.w,):SizedBox.shrink(),

           Text(content,style: Styles.text54,)
         ],
       )
    );
  }
}
