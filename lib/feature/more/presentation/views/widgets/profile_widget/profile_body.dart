import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/profile_widget/profile_model.dart';

import '../../../../../../core/widgets/custom_appbar.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 20.w, right: 20.w),
      child: Column(
        children: [
          CustomAppbar(text: "Profile"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              Text(
                "Full Name",
                style: Styles.text55,
              ),
              ProfileModel(
                content: 'Maysem Muhammed',
                needIcon: false,
              ),
              Text(
                "Phone Number",
                style: Styles.text55,
              ),
              ProfileModel(
                content: '0123456789',
                needIcon: false,
              ),
              Text(
                "Change Password",
                style: Styles.text55,
              ),
              ProfileModel(
                content: 'Enter your passwrd',
                needIcon: true,
                icon: Icons.lock_outline,
              ),
              Text(
                "Confirm Password",
                style: Styles.text55,
              ),
              ProfileModel(
                content: 'Confirm your passwrd',
                needIcon: true,
                icon: Icons.lock_outline,
              ),
            ],
          )
        ],
      ),
    );
  }
}
