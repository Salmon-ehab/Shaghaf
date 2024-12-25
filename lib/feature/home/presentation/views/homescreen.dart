import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/widgets/bottom_navigation_bar.dart';
import 'package:shagaf/core/widgets/drawer.dart';
import 'package:shagaf/feature/home/presentation/views/widgets/home_screen_widgets/home_body.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: HomeBody());
  }
}
