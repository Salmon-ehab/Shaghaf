import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';
import '../../../../../../core/assets/styels.dart';

class AmenitiesContent extends StatefulWidget {
  const AmenitiesContent({super.key});

  @override
  State<AmenitiesContent> createState() => _AmenitiesContentState();
}

class _AmenitiesContentState extends State<AmenitiesContent> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Amenities", style: Styles.text22),
        ListTile(
          leading:SvgPicture.asset(
            Images().printer,
            color: COLORS.color20,
          ),            title:     Text( 'Printer, Scanner and photocopier',style: Styles.text23,),
          minTileHeight: 15.h,

        ),
        ListTile(
          leading:  Icon(Icons.wifi,color: COLORS.color20,),
          title:     Text('Wi-fi',style: Styles.text23),
          minTileHeight: 15.h,
        ),
        ListTile(
          leading:SvgPicture.asset(
            Images().coffee,
            color: COLORS.color20,
          ),            title:     Text('Free coffee',style: Styles.text23),
          minTileHeight: 15.h,
        ),
        ListTile(
          leading:  Icon( Icons.ondemand_video,color: COLORS.color20),
          title:     Text('Video Conf',style: Styles.text23),
          minTileHeight:15.h,

        ),
        ListTile(
          leading:SvgPicture.asset(
            Images().ledScreen,
            color: COLORS.color20,
          ),            title:     Text('LED screen',style: Styles.text23),
          minTileHeight: 15.h,

        ),

      ],
    );
  }
}
