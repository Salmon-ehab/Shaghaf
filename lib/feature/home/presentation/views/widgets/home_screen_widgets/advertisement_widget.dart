import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/images.dart';
import '../../../../../../core/assets/styels.dart';

class AdvertisementWidget extends StatelessWidget {
  const AdvertisementWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 30.h, bottom: 20.h),
      child: Container(
        height: 170.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Advertisement", style: Styles.text14),
            SizedBox(height: 15.h),
            SizedBox(
              height: 108.h,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder:(context,index){
                    return SizedBox(width: 15.w);
                  },
                  itemBuilder: (context,index){
                    return Image.asset(Images().advertisement,width:230.w,height: 108.h,);
                  },
                  itemCount: 6),
            )
          ],
        ),
      ),
    );
  }
}
