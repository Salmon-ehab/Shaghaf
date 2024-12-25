import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/log_in_widget/log_in_container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/widgets/custom_appbar.dart';

class LogInBody extends StatelessWidget {
  const LogInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35.h),
            CustomAppbar(text: ''),
            SizedBox(height: 20.h),
            Image.asset(Images().auth_logo,height:236.h ,width: 140.w),
            SizedBox(height: 40.h),
            LogInContainer(),

          ],
        ),
      ),
    );
  }
}
