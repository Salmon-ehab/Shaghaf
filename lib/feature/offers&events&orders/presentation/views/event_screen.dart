import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/widgets/drawer.dart';
import '../../../../core/assets/images.dart';
import '../../../../core/widgets/bottom_navigation_bar.dart';
import 'widgets/event_widget/event_body.dart';



class EventScreen extends StatefulWidget {
  const EventScreen({super.key});

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      drawer: DrawerWidget(),
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
      body: EventBody(),
    );
  }
}
