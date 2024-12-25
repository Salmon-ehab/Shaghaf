import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/setting_widget/setting_body.dart';

import '../../../../core/assets/colors.dart';
import '../../../../core/assets/images.dart';
import '../../../../core/widgets/bottom_navigation_bar.dart';
import '../../../../core/widgets/drawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
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
      body: SettingBody(),
    );
  }
}
