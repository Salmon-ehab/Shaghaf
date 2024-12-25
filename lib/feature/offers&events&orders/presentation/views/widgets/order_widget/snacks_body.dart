import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/images.dart';
import 'item_model.dart';

class SnacksBody extends StatelessWidget {
  const SnacksBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 440.h,
      width: 493.w,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          itemCount: 9,
          itemBuilder: (BuildContext cotext,int index){
            return  ItemModel(image: Images().snack, text1: "Snacks", text2: " LE", salary: 15);

      }),
    );
  }
}
