import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../assets/colors.dart';
import '../assets/styels.dart';
import '../go_route.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.notificationScreen);

            },
            icon: Icon(
              MdiIcons.bellBadgeOutline,
              color: COLORS.color35,
              size: 27.sp,
            )),
        Text(text,style: Styles.text18,),
        IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Transform(
              transform: Matrix4.rotationY(3.14),
              alignment: Alignment.center,
              child: Icon(
                Icons.segment,
                color: COLORS.color35,
                size: 27.sp,
              ),
            )),

      ],
    );

  }
}
