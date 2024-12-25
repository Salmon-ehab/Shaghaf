import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/select_plan_sheet.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/go_route.dart';


class SelectDateWidget extends StatefulWidget {
  const SelectDateWidget({super.key});

  @override
  State<SelectDateWidget> createState() => _SelectDateWidgetState();
}

class _SelectDateWidgetState extends State<SelectDateWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.w, right: 20.w),
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
                "100.0 ",
                style: Styles.text22,
              ),
              Text(
                "EGP/Day",
                style: Styles.text27,
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return SelectPlanSheet();
                },
              );
            },
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: COLORS.color3,
            ),
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
                GoRouter.of(context).push(AppRouter.selectDate);
              },
                child: Center(child: Text("Select Date", style: Styles.text9))),
          ),
        ],
      ),
    );
  }
}
