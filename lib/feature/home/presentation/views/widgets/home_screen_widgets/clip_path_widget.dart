import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shape_to_go/shape_to_go.dart';

import '../../../../../../core/go_route.dart';


class ClipPathWidget extends StatefulWidget {
  const ClipPathWidget({Key? key}) : super(key: key);

  @override
  State<ClipPathWidget> createState() => _ClipPathWidgetState();
}

class _ClipPathWidgetState extends State<ClipPathWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 15.h,bottom: 20.h),
      child: SizedBox(
        width: double.maxFinite,
        height: 357.h,
        child: Stack(
          children: [
            Positioned(
              left:  2.w,
              right:  2.w,
              child: ClipPath(
                clipper: Potter(points: [
                  const TopLeftCorner(),
                  const TopRightCorner(),
                  const PointOnRightSide(divider: 1.5),
                  const BottomCenterCorner(),
                  const PointOnLeftSide(divider: 1.5),
                ], radius:  Radius.circular(10.r)),
                child: InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.rooms);

                  },
                  child: Container(
                    color: Color(0xFF20473E).withOpacity(.65),
                    width: 342.w,
                    height: 210.h,
                    child: SizedBox(
                      height: 130.h,
                      width: 130.w,
                      child: Padding(
                        padding:  EdgeInsets.only(right: 10.w,bottom: 20.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Rooms", style: Styles.text1),
                            Image.asset(
                              "${Images().cliproom}",
                              height: 130.h,
                              width: 120.w,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 2.w,
              bottom: 0.h,
              child: ClipPath(
                clipper: Potter(points: [
                   TopLeftCorner(radius: Radius.circular(30.r)),
                  const PointOnRightSide(divider: 2.5),
                  const BottomRightCorner(),
                  const BottomLeftCorner(),
                ], radius:  Radius.circular(10.r)),
                child: InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.orderScreen);

                  },
                  child: Container(
                    color: Color(0xFFF04C29).withOpacity(.65),
                    width: 170.w,
                    height: 200.h,
                    child: SizedBox(
                      height: 130.h,
                      width: 130.w,
                      child: Padding(
                        padding:  EdgeInsets.only(left: 10.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Orders", style: Styles.text1),
                            Image.asset(
                              "${Images().cliprder}",
                              height: 130.h,
                              width: 120.w,
                            )
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ),
            ),
            Positioned(
              right: 2.w,
              bottom: 0.h,
              child: ClipPath(
                clipper: Potter(points: [
                  const PointOnLeftSide(divider: 2.5),
                   TopRightCorner(radius: Radius.circular(30.r)),
                  const BottomRightCorner(),
                  const BottomLeftCorner(),
                ], radius:  Radius.circular(10.r)),
                child: InkWell(
                  onTap: (){
                    GoRouter.of(context).push(AppRouter.eventScreen);

                  },
                  child: Container(
                    color: Color(0xFFFFCC0A).withOpacity(.65),
                    width: 165.w,
                    height: 200.h,
                    child: SizedBox(
                      height: 130.h,
                      width: 130.w,
                      child: Padding(
                        padding:  EdgeInsets.only(right: 10.w),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text("Events", style: Styles.text1),
                            Image.asset(
                              "${Images().clippath2}",
                              height: 130.h,
                              width: 120.w,
                            )
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

