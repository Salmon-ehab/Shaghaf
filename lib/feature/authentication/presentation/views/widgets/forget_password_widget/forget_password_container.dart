import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/assets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../../core/assets/styels.dart';
import '../../../../../../core/go_route.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../custom_text_form_widget.dart';

class ForgetPasswordContainer extends StatelessWidget {
  const ForgetPasswordContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: COLORS.color12,
      ),
      margin:  EdgeInsets.only( bottom: 15.h),
      padding:
      EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h, bottom: 15.h),
      height: 320.h,
      width: 345.w,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Forgot Your Password?", style: Styles.text4),
          SizedBox(height: 20.h),
          Text("Enter your phone number, we will send you confirmation code", style: Styles.text12),
          SizedBox(height: 40.h),
          Text("Email Address", style: Styles.text4),
          SizedBox(height: 20.h),
          CustomTextFormWidget(
              icon: Icons.email_outlined,
              hint: "Enter your email",
              textInputType: TextInputType.emailAddress,
              security: false),
          SizedBox(height: 25.h),
          CustomButton(text: "Reset Password",onTap: (){
            GoRouter.of(context).push(AppRouter.verifyView);
          }, height: 40.h, width: 323.w,),


        ],
      ),
    );
  }
}
