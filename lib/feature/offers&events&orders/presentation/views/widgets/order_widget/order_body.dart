import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/order_widget/cold_drink_body.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/order_widget/custom_tabbar.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/order_widget/hot_drink_body.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/order_widget/snacks_body.dart';
import '../../../../../../core/assets/styels.dart';
import '../../../../../../core/widgets/custom_appbar.dart';

class OrderBody extends StatefulWidget {
  const OrderBody({super.key});

  @override
  State<OrderBody> createState() => _OrderBodyState();
}

class _OrderBodyState extends State<OrderBody> {
  int selectedIndex = 0;
  void _handleTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 10.w, right: 10.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppbar(text: "Orders"),
          Padding(
            padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "What’s on your mind?",
                  style: Styles.text57,
                ),
                CustomTabBar(
                  onTabChange: _handleTabChange,
                ),
                IndexedStack(
                  index: selectedIndex,
                  children: [ColdDrinkBody(), HotDrinkBody(), SnacksBody()],

                ),
                SizedBox(height: 15.h,),
                CustomButton(text: "Next",  height: 40.h, width: 342.w)
              ],
            ),
          )
        ],
      ),
    );
  }
}
