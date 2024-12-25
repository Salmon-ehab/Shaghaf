import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';

class ColorChangingContainer extends StatefulWidget {
  final Function(int) onTabChanged; // Callback لتغيير التبويب

  ColorChangingContainer({required this.onTabChanged});

  @override
  _ColorChangingContainerState createState() => _ColorChangingContainerState();
}

class _ColorChangingContainerState extends State<ColorChangingContainer> {
  int selectedIndex = 1; // 0 لـ Past، 1 لـ Upcoming

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          selectedIndex == 1
              ? Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 0; // تغيير إلى Past
                          widget
                              .onTabChanged(selectedIndex); // استدعاء callback
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 342.w,
                        decoration: BoxDecoration(
                          color: selectedIndex == 0
                              ? COLORS.color3
                              : COLORS.color36,
                          borderRadius: selectedIndex == 0
                              ? BorderRadius.circular(8.r)
                              : BorderRadius.only(
                                  bottomLeft: Radius.circular(8.r),
                                  topLeft: Radius.circular(8.r),
                                ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(width: 60.w),
                            Text(
                              'Past',
                              style: selectedIndex == 0
                                  ? Styles.text9
                                  : Styles.text41,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 150.w),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 1; // تغيير إلى Upcoming
                            widget.onTabChanged(
                                selectedIndex); // استدعاء callback
                          });
                        },
                        child: Container(
                          height: 40.h,
                          width: 177.w,
                          decoration: BoxDecoration(
                            borderRadius: selectedIndex == 1
                                ? BorderRadius.circular(8.r)
                                : BorderRadius.only(
                                    bottomRight: Radius.circular(8.r),
                                    topRight: Radius.circular(8.r),
                                  ),
                            color: selectedIndex == 1
                                ? COLORS.color3
                                : COLORS.color36,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'Upcoming',
                            style: selectedIndex == 1
                                ? Styles.text9
                                : Styles.text41,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = 1; // تغيير إلى Upcoming
                          widget.onTabChanged(
                              selectedIndex); // استدعاء callback
                        });
                      },
                      child: Container(
                        height: 40.h,
                        width: 344.w,
                        decoration: BoxDecoration(
                          borderRadius: selectedIndex == 1
                              ? BorderRadius.circular(8.r)
                              : BorderRadius.only(
                            bottomRight: Radius.circular(8.r),
                            topRight: Radius.circular(8.r),
                          ),
                          color: selectedIndex == 1
                              ? COLORS.color3
                              : COLORS.color36,
                        ),
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding:  EdgeInsets.only(right: 25.w),
                          child: Text(
                            'Upcoming',
                            style: selectedIndex == 1
                                ? Styles.text9
                                : Styles.text41,
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(right: 162.h),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = 0; // تغيير إلى Past
                            widget
                                .onTabChanged(selectedIndex); // استدعاء callback
                          });
                        },
                        child: Container(
                          height: 40.h,
                          width: 177.w,
                          decoration: BoxDecoration(
                            color: selectedIndex == 0
                                ? COLORS.color3
                                : COLORS.color36,
                            borderRadius: selectedIndex == 0
                                ? BorderRadius.circular(8.r)
                                : BorderRadius.only(
                                    bottomLeft: Radius.circular(8.r),
                                    topLeft: Radius.circular(8.r),
                                  ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 60.w),
                              Text(
                                'Past',
                                style: selectedIndex == 0
                                    ? Styles.text9
                                    : Styles.text41,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          SizedBox(height: 20.h), // مسافة بين الزر والمحتوى
        ],
      ),
    );
  }
}
