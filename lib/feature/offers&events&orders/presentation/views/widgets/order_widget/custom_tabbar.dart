import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/images.dart';

class CustomTabBar extends StatefulWidget {
  final Function(int) onTabChange;

  const CustomTabBar({super.key, required this.onTabChange});
  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  int selectedIndex = 1; // 0 لـ Past، 1 لـ Upcoming
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: 15.h, bottom: 15.h, left: 10.w, right: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 0; // تغيير إلى Past
                widget.onTabChange(selectedIndex); // استدعاء callback
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Images().coldDrink),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("Cold Drinks", style: Styles.text61)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 1; // تغيير إلى Past
                widget.onTabChange(selectedIndex); // استدعاء callback
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Images().hotDrink),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("Hot Drinks", style: Styles.text61)
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                selectedIndex = 2; // تغيير إلى Past
                widget.onTabChange(selectedIndex); // استدعاء callback
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 80.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(Images().snack),
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text("Snacks", style: Styles.text61)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
