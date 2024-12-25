import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/clock_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/timer_widget.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';
import 'booking_model.dart';

class UpcomingBody extends StatelessWidget {
  const UpcomingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 329.h,
          width: 390.w,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(Images().trainingRoom),fit: BoxFit.fill,
                  colorFilter: ColorFilter.mode(
                      Colors.black26, BlendMode.hardLight)),),
          child: Padding(
            padding:  EdgeInsets.only(top:25.h,bottom: 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Clock(),
                TimerWidget()

              ],
            ),
          ),
        ),
        Container(
          height: 356.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(boxShadow: [
          ], color: COLORS.color1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BookingModel(roomName: "Training Room", date: "18/2/2024", time: "09:00 Am", seats: "x1", deposit: "50.00 LE", reastOfMoney: "30.00 LE", coffee: "20.00 LE", status: null),
              SizedBox(height: 10.h,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  height: 40.h,
                  width: 164.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: COLORS.color3),
                  child: Center(
                      child: Text(
                        "Extra Time",
                        style: Styles.text9,
                      )),
                ),
                Container(
                  height: 40.h,
                  width: 164.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: COLORS.color1,
                    border: Border.all(
                      color: COLORS.color3,
                      width: 1.3.w,
                    ),
                  ),

                  child: Center(
                      child: Text(
                        "Add Items",
                        style: Styles.text28,
                      )),
                )
              ],)

            ],
          ),
        )
      ],
    );
  }
}
