import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/booking_history_body.dart';

import '../../../../core/assets/images.dart';
import '../../../../core/widgets/bottom_navigation_bar.dart';
import '../../../../core/widgets/drawer.dart';

class BookingHistoryScreen extends StatelessWidget {
  const BookingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: COLORS.color1,
      floatingActionButton: Stack(
        alignment: Alignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 33.r,
          ),
          FloatingActionButton(
            shape: CircleBorder(),
            onPressed: null,
            child: CircleAvatar(
              backgroundColor: Color(0xAA20473E),
              radius: 35.r,
              child: Image.asset(
                "${Images().bottomNavBar}",
                width: 30.w,
                height: 60.h,
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigation(),
      drawer: DrawerWidget(),
      body: BookingHistoryBody(),
    );
  }
}
