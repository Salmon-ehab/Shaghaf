import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shagaf/core/widgets/custom_appbar.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/forget_password_widget/forget_password_container.dart';
import '../../../../../../core/assets/images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
     return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35.h),
            CustomAppbar(text: ''),
            SizedBox(height: 20.h),
            Image.asset(Images().auth_logo,height:236.h ,width: 140.w),
            SizedBox(height: 40.h),
            ForgetPasswordContainer(),// Add spacing after logo
        
          ],
        ),
      ),
    );
  }
}
