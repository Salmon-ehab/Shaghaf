             import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/styels.dart';

class ContactUsListTile extends StatelessWidget {
  final Widget icon;
  final String title;
  final VoidCallback onTap;

  const ContactUsListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading:icon,
          title: Text(
            title,
            style: Styles.text53,

          ),
          minTileHeight: 25.h,
          horizontalTitleGap: 4.w,
        ),
        Padding(
          padding:  EdgeInsets.only(left: 15.w, bottom: 15.h),
          child: Divider(height: 0),
        ),
      ],
    );
  }
}