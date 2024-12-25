import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:iconly/iconly.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/feature/home/presentation/views/homescreen.dart';
import 'package:shagaf/feature/room/presentation/views/booking_history_screen.dart';

import '../assets/colors.dart';

class BottomNavigation extends StatefulWidget {
  Color color1 = COLORS.color6;
  Color color2 = COLORS.color14;
  List screens =[
    Homescreen(),
    BookingHistoryScreen()
  ];
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();

}
int currentindex = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override

  Widget build(BuildContext context) {

    return BottomAppBar(
      child: SizedBox(
        height: 100.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.homeView);
                  setState(() {
                  currentindex = 0;
                  });

                },
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35.h,
                      child: Icon(IconlyBold.home,
                          color:currentindex == 0
                              ? widget.color1
                              : widget.color2),
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                          fontSize: 12.sp,
                          color: currentindex == 0
                              ? widget.color1
                              : widget.color2),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.bookingHistory);
                  setState(() {
                   currentindex = 1;
                  });

                },
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35.h,
                      child: Icon(
                        FontAwesomeIcons.edit,
                        color: currentindex == 1
                            ? widget.color1
                            : widget.color2,
                      ),
                    ),
                    Text('Book',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: currentindex == 1
                              ? widget.color1
                              : widget.color2,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(width: 40.w), // Space for the FloatingActionButton
            Expanded(
              child: InkWell(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.offerScreen);
                  setState(() {
                  currentindex = 2;
                  });
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35.h,
                      child: Icon(Icons.local_offer,
                          color: currentindex == 2
                              ? widget.color1
                              : widget.color2),
                    ),
                    Text('Offers',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: currentindex == 2
                                ? widget.color1
                                : widget.color2)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                  currentindex = 3;
                  GoRouter.of(context).push(AppRouter.settingScreen);

                  });
                },
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 35.h,
                      child: Icon(Icons.menu,
                          color: currentindex == 3
                              ? widget.color1
                              : widget.color2),
                    ),
                    Text('More',
                        style: TextStyle(
                            fontSize: 12.sp,
                            color: currentindex == 3
                                ? widget.color1
                                : widget.color2)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
