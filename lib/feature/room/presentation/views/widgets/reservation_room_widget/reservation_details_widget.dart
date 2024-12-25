import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/amenities_content.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/bottom_sheet_content.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/select_date_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/rooms_widget/rooms_model.dart';

import '../../../../../../core/assets/colors.dart';

class ReservationDetailsWidget extends StatefulWidget {
  const ReservationDetailsWidget({super.key, required this.roomsModel2});
  final RoomsModel roomsModel2;
  @override
  State<ReservationDetailsWidget> createState() =>
      _ReservationDetailsWidgetState();
}

class _ReservationDetailsWidgetState extends State<ReservationDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 300.h),
      child: Stack(alignment: Alignment.bottomCenter, children: [
        Container(
          height: 750.h,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35.r),
                  topRight: Radius.circular(35.r)),
              color: COLORS.color1),
          child: Padding(
            padding: EdgeInsets.only(left: 30.w, right: 10.w, top: 10.h),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.roomsModel2.text}", style: Styles.text19),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 102.w,
                    padding: EdgeInsets.only(left: 4.w, right: 4.w),
                    decoration: BoxDecoration(
                      color: COLORS.color1,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(0.0,
                              3.0), // تعديل قيمة offset لجعل الظل في الأسفل
                          blurRadius: 5.0
                              .r, // زيادة قيمة blurRadius لجعل الظل أكثر وضوحًا
                          spreadRadius: 0.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.chair_outlined, color: COLORS.color3),
                        Text("30 Seats", style: Styles.text20),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                      style: Styles.text21),
                  SizedBox(
                    height: 15.h,
                  ),
                  AmenitiesContent(),
                  Center(
                      child: IconButton(
                          onPressed: () {
                            showModalBottomSheet<void>(
                                context: context,
                                builder: (BuildContext context) {
                                  return Container(
                                      height: 390.h,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(35),
                                              topRight: Radius.circular(35)),
                                          color: COLORS.color1),
                                      child: BottomSheetContent());
                                });
                          },
                          icon:
                              Icon(Icons.keyboard_double_arrow_down_rounded))),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,
                          color: COLORS.color3, size: 26.sp),
                      SizedBox(width: 7.w),
                      Text("Location", style: Styles.text22)
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Image.asset(
                    Images().location,
                    width: 342.w,
                    height: 150.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        SelectDateWidget(),
      ]),
    );
  }
}
