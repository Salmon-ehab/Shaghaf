import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../../core/assets/images.dart';
import '../../../../../../core/widgets/custom_appbar.dart';
import 'contactus_listtile.dart';

class ContactUsBody extends StatefulWidget {
  ContactUsBody({super.key});

  final Uri _url =
      Uri.parse('https://web.facebook.com/ShaghafCoworkingSpace?_rdc=1&_rdr');

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  @override
  State<ContactUsBody> createState() => _ContactUsBodyState();
}

class _ContactUsBodyState extends State<ContactUsBody> {
  @override

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h,left: 15.w, right: 10.w),
      child: Column(
        children: [
          CustomAppbar(text: "Contact Us"),
          Padding(
            padding: EdgeInsets.only(top: 20.h, right: 45.w),
            child: Column(
              children: [
                ContactUsListTile(
                  icon: Image.asset(
                    Images().phone,
                    width: 24.w,
                    height: 24.h,
                    color: COLORS.color45,
                  ),
                  title: "015557992",
                  onTap: () {},
                ),
                ListTile(
                  leading:
                      Image.asset(Images().facebook, width: 24.w, height: 24.h),
                  title: InkWell(
                    onTap: widget._launchUrl,
                    child: Text(
                      'Shaghaf Co-working space',
                      style: TextStyle(
                        decoration: TextDecoration.underline
                      ),
                    ),
                  ),
                  minTileHeight: 25.h,
                  horizontalTitleGap: 4.w,                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.w, bottom: 15.h),
                  child: Divider(height: 0),
                ),
                ContactUsListTile(
                  icon: Image.asset(
                    Images().gmail,
                    width: 24.w,
                    height: 24.h,
                  ),
                  title: "shagaf@gmail.com",
                  onTap: () {},
                ),
                ContactUsListTile(
                  icon: Image.asset(
                    Images().instagram,
                    width: 24.w,
                    height: 24.h,
                  ),
                  title: "shagaf@gmail.com",
                  onTap: () {},
                ),
                ContactUsListTile(
                  icon: Image.asset(
                    Images().snapchat,
                    width: 24.w,
                    height: 24.h,
                  ),
                  title: "shagaf@gmail.com",
                  onTap: () {},
                ),
                ContactUsListTile(
                  icon: Image.asset(
                    Images().tictok,
                    width: 24.w,
                    height: 24.h,
                  ),
                  title: "shagaf@gmail.com",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
