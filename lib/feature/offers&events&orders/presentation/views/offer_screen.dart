import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/core/widgets/drawer.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/offer_widget/offer_body.dart';

import '../../../../core/assets/images.dart';
import '../../../../core/widgets/bottom_navigation_bar.dart';

class OfferScreen extends StatefulWidget {
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
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
      body: OfferBody(),
    );
  }
}
