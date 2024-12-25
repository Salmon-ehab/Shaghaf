import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/go_route.dart';
import '../assets/colors.dart';
import '../assets/images.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: COLORS.color1,
      width: 270.w,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
         Padding(
           padding:  EdgeInsets.only(top:70.h,bottom: 20.h,left: 20.w),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding:  EdgeInsets.only(left: 25.w,bottom: 25.h),
                 child: Image(image:AssetImage("${Images().drawer}"),height: 160.h,width: 100.w,),
               ),
               ListTile(
                 leading:  Icon(Icons.account_circle_outlined,color: COLORS.color11,),
                 title:     Text('Profile',style: Styles.text16,),
                 onTap: () {
                   setState(() {
                     GoRouter.of(context).push(AppRouter.profileScreen);
                   });
                 },
               ),
               ListTile(
                 contentPadding:EdgeInsets.only(left:14.w,right:70.w) ,
                 leading:  Icon(Icons.language,color: COLORS.color11,),
                 title:     Text('English',style: Styles.text16,),
                 trailing: Icon(Icons.keyboard_arrow_down,color: COLORS.color11,),
                 onTap: () {
                   setState(() {
                     //   selectedPage = 'Profile';
                   });
                 },
               ),
               ListTile(
                 leading:  Icon(Icons.shopping_cart_outlined,color: COLORS.color11,),
                 title:     Text('Orders',style: Styles.text16,),
                 onTap: () {
                   setState(() {
                     GoRouter.of(context).push(AppRouter.orderScreen);
                   });
                 },
               ),
               ListTile(
                 leading:  Icon(  MdiIcons.bellBadgeOutline,color: COLORS.color11,),
                 title:     Text('Notification',style: Styles.text16,),
                 onTap: () {
                   setState(() {
                     GoRouter.of(context).push(AppRouter.notificationScreen);
                   });
                 },
               ),
               ListTile(
                 leading:  Icon(Icons.star_rounded,color: COLORS.color11,),
                 title:     Text('Rating',style: Styles.text16,),
                 onTap: () {
                   setState(() {
                     //   selectedPage = 'Profile';
                   });
                 },
               ),
               ListTile(
                 leading:  Icon(Icons.contact_page_outlined,color: COLORS.color11,),
                 title:     Text('Contact Us',style: Styles.text16,),
                 onTap: () {
                   setState(() {
                     GoRouter.of(context).push(AppRouter.contactUsScreen);
                   });
                 },
               ),
             ],
           ),
         )
        ],
      ),
    );
  }
}
