import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../feature/room/presentation/views/widgets/fav_icon_widget.dart';
import '../assets/colors.dart';
import '../assets/styels.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key, required this.image, required this.textAppBar});
final List<String> image;
  final String textAppBar;

  @override
  State<CustomCarousel> createState() => _CustomCarouselState();
}

class _CustomCarouselState extends State<CustomCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.topCenter, children: [
      CarouselSlider(
          items: [
            for (int i = 0; i < widget.image.length; i++)
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        widget.image[i],
                      ),
                      fit: BoxFit.fill,
                    )),
                width: MediaQuery.of(context).size.width,
                height: 300.h,
              )
          ],
          options: CarouselOptions(
            height: 430.h,
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
        height: 430.h,
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
                      GoRouter.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Text("${widget.textAppBar}", style: Styles.text16),
                  FavIconWidget()
                ],
              ),
              SizedBox(height: 120.h),
              Container(
                height: 34.h,
                width: 85.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  color: COLORS.color11,
                ),
                child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Icon(Icons.location_on_outlined,
                            color: COLORS.color1, size: 12.sp),
                        SizedBox(width: 3.w),
                        Text("Roxy", style: Styles.text9)
                      ],
                    )),
              ),
              SizedBox(height: 15.h),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(widget.image.length, (index) {
                    return Container(
                        height: 12.h,
                        width: 12.w,
                        margin: EdgeInsets.symmetric(
                            vertical: 8.h, horizontal: 4.w),
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
