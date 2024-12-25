import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/feature/home/presentation/views/widgets/home_screen_widgets/advertisement_widget.dart';
import 'package:shagaf/feature/home/presentation/views/widgets/home_screen_widgets/carousel_widget.dart';
import 'package:shagaf/feature/home/presentation/views/widgets/home_screen_widgets/clip_path_widget.dart';
import 'package:shagaf/feature/home/presentation/views/widgets/home_screen_widgets/filter_widget.dart';

import '../../../../../../core/assets/styels.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Column(
        children: [
          CarouselWidget(),
          Padding(
          padding: EdgeInsets.only(top: 10.h, left: 15.w, right: 15.w, bottom: 10.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AdvertisementWidget(),
                  Row(
                    children: [
                      FilterWidget(text: "Membership", ontap: () {
                        GoRouter.of(context).push(AppRouter.memberShipScreen);
                      },),
                      FilterWidget(text: "Birthday", ontap: () {
                        GoRouter.of(context).push(AppRouter.birthDayScreen);

                      },),
                      FilterWidget(text: "Photo session", ontap: () {
                        GoRouter.of(context).push(AppRouter.photoSessionScreen);

                      },),

                    ],
                  ),
                  Text("Categories", style: Styles.text14),
                  ClipPathWidget(),
                ],
            ),
          ),


        ],
      ),
    );
  }
}
