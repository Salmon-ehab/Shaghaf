import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/verify_widget/verify_container.dart';
import '../../../../../../core/assets/images.dart';

import '../../../../../../core/widgets/custom_appbar.dart';

class VerifiyBody extends StatelessWidget {

  const VerifiyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(bottom: 40.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 35.h),
              CustomAppbar(text: ''),
              SizedBox(height: 20.h),
              Image.asset(Images().auth_logo,height:236.h ,width: 140.w),
              SizedBox(height: 40.h),
              VerifiyContainer()
            ],
          ),
        ),
      ),
    );
  }
}
