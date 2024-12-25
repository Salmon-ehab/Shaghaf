import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/core/widgets/custom_appbar.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/select_date&time_widget/date_time_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/select_date&time_widget/number_of_seats_widget.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';

class SelectDateBody extends StatefulWidget {
  const SelectDateBody({super.key});

  @override
  State<SelectDateBody> createState() => _SelectDateBodyState();
}

class _SelectDateBodyState extends State<SelectDateBody> {
  Color colorButton =COLORS.color6;
  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 40.h, left: 10.w, right: 10.w),
            child: CustomAppbar(text: "Select date and time"),
          ),
          DateTimeWidget(),
          NumberOfSeatsWidget(),
          Padding(
            padding:  EdgeInsets.only(top: 40.0.h,bottom: 20.h),
            child: InkWell(
              onTap: () {
                setState(() {
                  colorButton =COLORS.color28;
                  GoRouter.of(context).push(AppRouter.bookingReview);
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13.r),
                  color: colorButton,
                ),
                height: 40.h,
                width: 340.w,
                child: Center(child: Text("Done", style: Styles.text9)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
