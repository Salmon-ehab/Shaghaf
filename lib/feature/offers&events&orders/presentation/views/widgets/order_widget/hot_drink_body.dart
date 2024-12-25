import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/images.dart';
import 'item_model.dart';

class HotDrinkBody extends StatelessWidget {
  const HotDrinkBody({super.key});

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
            return  ItemModel(image: Images().hotDrink, text1: "Hot Drink", text2: " LE", salary: 20);

          }),
    );  }
}
