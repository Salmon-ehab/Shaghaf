import 'dart:ui';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/go_route.dart';

class CarouselWidget extends StatefulWidget {
  CarouselWidget({super.key});
  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

List ImageList = [
  Images().carousel_image,
  Images().carousel_image,
  Images().carousel_image,
  Images().carousel_image,
  Images().carousel_image,
  Images().carousel_image,
];

class _CarouselWidgetState extends State<CarouselWidget> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Stack(alignment: Alignment.topCenter, children: [
      CarouselSlider(
          items: [
            for (int i = 0; i < ImageList.length; i++)
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          ImageList[i],
                        ),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black26, BlendMode.hardLight))),
                width: MediaQuery.of(context).size.width,
                height: 300.h,
              )
          ],
          options: CarouselOptions(
            height: 316.h,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            enlargeFactor: 0.0,
            onPageChanged: (index, reason) {
              setState(() {
                _currentIndex = index;
              });
            },
            scrollDirection: Axis.horizontal,
          )),
      Container(
        height: 312.h,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h, bottom: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: Transform(
                        transform: Matrix4.rotationY(3.14),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.segment,
                          color: COLORS.color1,
                          size: 27.sp,
                        ),
                      )),
                  IconButton(
                      onPressed: () {
                        GoRouter.of(context).push(AppRouter.notificationScreen);

                      },
                      icon: Icon(
                        MdiIcons.bellBadgeOutline,
                        color: COLORS.color1,
                        size: 27.sp,
                      )),
                ],
              ),
              SizedBox(height: 80.h),
              Container(
                height: 36.h,
                width: 124.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: COLORS.color11,
                ),
                child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: Colors.white60, size: 18.sp),
                        SizedBox(width: 5.w),
                        Text("Location", style: Styles.text9)
                      ],
                    )),
              ),
              SizedBox(height: 15.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delightful open air",
                    style: Styles.text1,
                  ),
                  Container(
                    height: 30.h,
                    width: 75.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.r),
                      color: COLORS.color11.withOpacity(.5),
                    ),
                    child: MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.star_rounded,
                                color: COLORS.color2, size: 17.sp),
                           // SizedBox(width: 5.w),
                            Text("4.7", style: Styles.text9)
                          ],
                        )),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Row(
                  children: List.generate(ImageList.length, (index) {
                return Container(
                    height: 12.h,
                    width: 12.w,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 4.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == index
                          ? COLORS.color11
                          : COLORS.color11.withOpacity(0.48),
                    ));
              })),
            ],
          ),
        ),
      )
    ]);
  }
}
