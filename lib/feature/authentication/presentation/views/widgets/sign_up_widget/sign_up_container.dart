import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/feature/authentication/presentation/manager/auth_cubit/Auth_cubit.dart';
import 'package:shagaf/feature/authentication/presentation/manager/auth_cubit/Auth_state.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';
import '../../../../../../core/widgets/custom_button.dart';
import '../custom_text_form_widget.dart';

class SignUpContainer extends StatefulWidget {
  const SignUpContainer({super.key});

  @override
  State<SignUpContainer> createState() => _SignUpContainerState();
}

class _SignUpContainerState extends State<SignUpContainer> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController birthdateController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    usernameController;
    birthdateController;
    passwordController;
    phoneController;
    emailController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthCubitState>(
      listener: (BuildContext context, state) {
        if (state is AuthCubitSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Signup Successful!",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.green,
          ));
          GoRouter.of(context).pushReplacement(AppRouter.homeView);
        } else if (state is AuthCubitFailureState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(
              "Signup Failed :${state.error} ",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.red,
          ));
        }
      },
      builder: (context, state) {
        return Form(
          key: formKey,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: COLORS.color12,
            ),
            margin: EdgeInsets.only(bottom: 15.h),
            padding: EdgeInsets.only(
                left: 10.w, right: 10.w, top: 15.h, bottom: 5.h),
            height: 480.h,
            width: 345.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email Address", style: Styles.text4),
                SizedBox(height: 5.h),
                CustomTextFormWidget(
                  icon: Icons.email_outlined,
                  hint: "Enter your email",
                  controller: emailController,
                  textInputType: TextInputType.emailAddress,
                  security: false,
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
                //  SizedBox(height: 15.h),
                Text("User Name", style: Styles.text4),
                SizedBox(height: 5.h),
                CustomTextFormWidget(
                  icon: Icons.person,
                  hint: "Enter your name",
                  controller: usernameController,
                  textInputType: TextInputType.text,
                  security: false,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "User name must not be empty";
                    }
                    if (value.length < 3) {
                      return "User name must not be less than 3 characters.";
                    }
                    return null;
                  },
                ),

                //   SizedBox(height: 10.h),
                Text("Password", style: Styles.text4),
                SizedBox(height: 5.h),
                CustomTextFormWidget(
                  icon: Icons.lock_outline,
                  hint: "Enter your password",
                  textInputType: TextInputType.text,
                  controller: passwordController,
                  security: true,
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
                //   SizedBox(height: 10.h),
                Text("Confirm Password", style: Styles.text4),
                SizedBox(height: 5.h),
                CustomTextFormWidget(
                  icon: Icons.lock_outline,
                  hint: "Confirm password",
                  textInputType: TextInputType.text,
                  controller: confirmPasswordController,
                  security: true,
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
                SizedBox(height: 10.h),
                CustomButton(
                  text: "SIGN UP",
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      if (passwordController.text ==
                          confirmPasswordController.text) {
                        BlocProvider.of<AuthCubit>(context).signUp(
                            username: usernameController.text,
                            phone: "01094146524",
                            password: passwordController.text,
                            email: emailController.text,
                            birthdate: '2024-05-11T07:31:37.169Z');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            "Passwords do not match!",
                            style: TextStyle(color: Colors.white),
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
                    }
                  },
                  height: 40.h,
                  width: 323.w,
                ),
                //       SizedBox(height: 7.h),
                SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "Already  have an account?",
                        style: Styles.text7,
                      ),
                      TextButton(
                          onPressed: () {
                            GoRouter.of(context).push(AppRouter.loginView);
                          },
                          child: Text(
                            "Log In",
                            style: Styles.text8,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
