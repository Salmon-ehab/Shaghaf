import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import '../../../../../../core/assets/colors.dart';


class BookNowWidget extends StatefulWidget {
  const BookNowWidget({super.key});

  @override
  State<BookNowWidget> createState() => _BookNowWidgetState();
}

class _BookNowWidgetState extends State<BookNowWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 30.w, right: 20.w),
      height: 80.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(3.0, 0.0),
            blurRadius: 5.0.r,
            spreadRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: COLORS.color1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "200.0 ",
                style: Styles.text22,
              ),
              Text(
                "EGP/Person",
                style: Styles.text27,
              ),
            ],
          ),
          Container(
            height: 40.h,
            width: 130.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: COLORS.color3,
            ),
            child: MaterialButton(
                onPressed:(){
               //   GoRouter.of(context).push(AppRouter.selectDate);
                },
                child: Center(child: Text("Book Now", style: Styles.text9))),
          ),
        ],
      ),
    );
  }
}
