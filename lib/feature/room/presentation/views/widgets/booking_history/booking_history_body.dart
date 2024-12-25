import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_appbar2.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/color_changing_container.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/past_body.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/upcoming_body.dart';



class BookingHistoryBody extends StatefulWidget {
  const BookingHistoryBody({super.key});

  @override
  State<BookingHistoryBody> createState() => _BookingHistoryBodyState();
}

class _BookingHistoryBodyState extends State<BookingHistoryBody> {
  int selectedIndex = 1; // 0 لـ Past، 1 لـ Upcoming

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar2(text: "Booking History"),
            ColorChangingContainer(
              onTabChanged: (index) {
                setState(() {
                  selectedIndex = index; // تحديث الفهرس عند الضغط
                });
              },
            ),
            IndexedStack(
              index: selectedIndex,
              children: [
                PastBody(),
                UpcomingBody(),
                // محتوى Upcoming
              ],
            ),
          ],
        ),
      ),
    );
  }
}
