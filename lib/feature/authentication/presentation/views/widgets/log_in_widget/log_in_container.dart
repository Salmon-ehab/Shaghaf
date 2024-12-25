import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/custom_text_form_widget.dart';
import '../../../../../../core/assets/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInContainer extends StatefulWidget {
  @override
  State<LogInContainer> createState() => _LogInContainerState();
}

class _LogInContainerState extends State<LogInContainer> {
  var formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController;
    passwordController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: COLORS.color12,
        ),
        padding:
            EdgeInsets.only(left: 10.w, right: 10.w, top: 20.h, bottom: 15.h),
        margin: EdgeInsets.only(bottom: 15.h),
        height: 370.h,
        width: 345.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Email Address", style: Styles.text4),
            SizedBox(height: 10.h),
            CustomTextFormWidget(
              icon: Icons.email_outlined,
              hint: "Enter your Email Address",
              textInputType: TextInputType.emailAddress,
              security: false,
              controller: emailController,
              validator: (value) {
                final bool emailValid = RegExp(
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(value!);
                if (value.isEmpty) {
                  return "Email must not be empty";
                } else if (emailValid == false) {
                  return "Email must be valid";
                }
                return null;
              },
            ),
            SizedBox(height: 15.h),
            Text("Password", style: Styles.text4),
            SizedBox(height: 10.h),
            CustomTextFormWidget(
              icon: Icons.lock_outline,
              hint: "Enter your password",
              textInputType: TextInputType.text,
              security: true,
              controller: passwordController,
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password must not be empty";
                }
                if (value.length < 8) {
                  return "Password must not be less than 8 characters.";
                }
                return null;
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.forgetPasswordView);
                    },
                    child: Text(
                      "Forget Password?",
                      style: Styles.text6,
                    )),
              ],
            ),
            CustomButton(
              text: "LOGIN",
              onTap: (){
                GoRouter.of(context).push(AppRouter.homeView);
              },
              height: 40.h,
              width: 323.w,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don’t have an account?",
                  style: Styles.text7,
                ),
                TextButton(
                    onPressed: () {
                      GoRouter.of(context).push(AppRouter.signUpView);
                    },
                    child: Text(
                      "Sign up",
                      style: Styles.text8,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
