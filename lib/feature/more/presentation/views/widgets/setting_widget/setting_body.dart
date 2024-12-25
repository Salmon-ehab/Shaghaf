import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/core/widgets/custom_appbar2.dart';

import '../../../../../../core/assets/images.dart';

class SettingBody extends StatefulWidget {
  const SettingBody({super.key});

  @override
  State<SettingBody> createState() => _SettingBodyState();
}

class _SettingBodyState extends State<SettingBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w),
            child: CustomAppbar2(text: "Setting"),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.h, right: 45.w),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    setState(() {
                      GoRouter.of(context).push(AppRouter.profileScreen);
                    });
                  },
                  leading: Icon(
                    Icons.account_circle_outlined,
                    color: COLORS.color3,
                    size: 18.sp,
                  ),
                  title: Text(
                    "Profile",
                    style: Styles.text53,
                  ),
                  minTileHeight: 20.h,
                  horizontalTitleGap: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
                ListTile(
                  onTap: () {
                    setState(() {});
                  },
                  leading: Icon(
                    Icons.language,
                    color: COLORS.color3,
                    size: 18.sp,
                  ),
                  trailing: Icon(Icons.keyboard_arrow_down_sharp,
                      color: COLORS.color3, size: 24.sp),
                  title: Text(
                    "English",
                    style: Styles.text53,
                  ),
                  minTileHeight: 20.h,
                  horizontalTitleGap: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      GoRouter.of(context).push(AppRouter.notificationScreen);
                    });
                  },
                  leading: Icon(
                    MdiIcons.bellBadgeOutline,
                    color: COLORS.color3,
                    size: 18.sp,
                  ),
                  title: Text(
                    "Notification",
                    style: Styles.text53,
                  ),
                  minTileHeight: 20.h,
                  horizontalTitleGap: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      GoRouter.of(context).push(AppRouter.contactUsScreen);
                    });
                  },
                  leading: SvgPicture.asset(
                    Images().contactUs,
                    color: COLORS.color3,
                  ),
                  title: Text(
                    "Contact Us",
                    style: Styles.text53,
                  ),
                  minTileHeight: 20.h,
                  horizontalTitleGap: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
                ListTile(
                  onTap: () {
                    setState(() {});
                  },
                  leading: Icon(
                    Icons.message,
                    color: COLORS.color3,
                    size: 18.sp,
                  ),
                  title: Text(
                    "About Us",
                    style: Styles.text53,
                  ),
                  minTileHeight: 20.h,
                  horizontalTitleGap: 3.w,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
