import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/assets/colors.dart';

class FavIconWidget extends StatelessWidget {
  const FavIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CircleAvatar(
          radius: 18.r,
            backgroundColor: COLORS.color1.withOpacity(.50),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite,size: 23.sp,),
              color: Colors.red,
            ))
      ],
    );
  }
}
