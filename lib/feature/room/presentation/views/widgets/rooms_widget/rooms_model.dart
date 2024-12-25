import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';
import '../../../../../../core/go_route.dart';
import '../fav_icon_widget.dart';

class RoomsModel extends StatelessWidget {
  const RoomsModel({super.key, required this.text, required this.assetName});
  final String text;
  final String assetName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 10.h, bottom: 10.h, left: 15.w, right: 20.w),
      child: InkWell(
        onTap:(){
          GoRouter.of(context).push(AppRouter.roomReserve,extra:RoomsModel(text: text, assetName: assetName));
        },
        child: Container(
          height: 220.h,
          width: 342.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13.r),
            image: DecorationImage(
                image: AssetImage("$assetName"), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                    0.0, 2.0), // تعديل قيمة offset لجعل الظل في الأسفل
                blurRadius: 5.0.r, // زيادة قيمة blurRadius لجعل الظل أكثر وضوحًا
                spreadRadius: 0.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(right: 15.w, top: 10.h),
                child: FavIconWidget()

              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 15.w),
                        child: Container(
                          padding:EdgeInsets.only(left: 5.w,right: 5.w),
                          height: 30.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.r),
                            color: COLORS.color11.withOpacity(.5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(Icons.star_rounded,
                                  color: COLORS.color2, size: 14.sp),
                              // SizedBox(width: 5.w),
                              Text("4.7", style: Styles.text17)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        padding:  EdgeInsets.only(left: 15.w),
                        height: 60.h,
                        width: 342.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(13.r),
                              bottomLeft: Radius.circular(13.r)),
                          color: COLORS.color1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("$text", style: Styles.text16)],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
