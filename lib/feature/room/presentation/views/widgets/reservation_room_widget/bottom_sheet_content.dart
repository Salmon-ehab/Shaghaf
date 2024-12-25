import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15.w, top: 10.h,bottom: 10.h),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("All Amenities",style: Styles.text26,),
            SizedBox(height: 15.h,),
            ListTile(
              leading: SvgPicture.asset(
                  Images().printer,
                  color: COLORS.color20,
              ),
              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'Printer, Scanner and photocopier',style: Styles.text25,),
                  Text( 'printing, photocopier and scanning services',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:  Icon( Icons.wifi,color: COLORS.color20,),
              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'WiFi',style: Styles.text25,),
                  Text( 'free high speed Wifi',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading: SvgPicture.asset(
                Images().coffee,
                color: COLORS.color20,
              ),
              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'Free coffee',style: Styles.text25,),
                  Text( 'free coffee and tea provided',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:  Icon( Icons.ondemand_video,color: COLORS.color20,),
              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'Video Conf',style: Styles.text25,),
                  Text( 'video conferencing setup avaliable',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:SvgPicture.asset(
                Images().ledScreen,
                color: COLORS.color20,
              ),
              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'LED screen',style: Styles.text25,),
                  Text( 'LED screen',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:SvgPicture.asset(
                Images().meetingRoomAccess,
                color: COLORS.color20,
              ),              title:     Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text( 'Meeting room access',style: Styles.text25,),
                  Text( 'free access to meeting rooms',style: Styles.text24,),
                ],
              ),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:SvgPicture.asset(
                Images().respection,
                color: COLORS.color20,
              ),              title:   Text( 'Reception',style: Styles.text25,),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:  Icon( Icons.chair_outlined,color: COLORS.color20,),
              title:   Text( '30 Seats',style: Styles.text25,),
              minTileHeight: 25.h,
            ),
            ListTile(
              leading:  Icon( Icons.location_on_outlined,color: COLORS.color20,),
              title:   Text( 'Location',style: Styles.text25,),
              minTileHeight: 25.h,
            ),

            SizedBox(height: 10.h,)

          ],
        ),
      ),
    );
  }
}
