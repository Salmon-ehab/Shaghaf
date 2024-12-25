import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/go_route.dart';
import 'package:shagaf/feature/authentication/presentation/manager/auth_cubit/Auth_cubit.dart';
import 'package:shagaf/feature/authentication/presentation/manager/auth_cubit/Auth_state.dart';
import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/images.dart';
import '../../../../../../core/widgets/custom_button.dart';

class OTPScreen extends StatefulWidget {

  const OTPScreen({super.key});
  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController otpController = TextEditingController();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PinCodeTextField(
            controller: otpController,
            obscureText: false,
            keyboardType: TextInputType.number,
            length: 6,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.underline,
              activeColor: Colors.black,
              selectedColor: Colors.black,
              inactiveColor: const Color(0xFFF04C29),
              borderRadius: BorderRadius.circular(10.r),
              fieldWidth: 32.w,
            ),
            onCompleted: (v) async {
              // await context
              //     .read<AuthCubit>()
              //     .verifyEmail(code: otpController.text, email: widget.email);
            },
            onChanged: (value) {},
            beforeTextPaste: (text) {
              return true;
            },
            appContext: context,
          ),
          SizedBox(height: 30.h), // Spacing between OTP field and button
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(COLORS.color6),
                minimumSize: MaterialStateProperty.all(Size(323.w, 40.h)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.r),
                  ),
                )),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    backgroundColor: COLORS.color1,
                    content: Container(
                      height: 350.h,
                      width: 327.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Image.asset(
                                Images().alertdialog,
                                height: 200.h,
                                width: 200.w,
                              )),
                          Text("Success", style: Styles.text10),
                          Text(
                            "You have successfully reset your password.",
                            style: Styles.text13,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          CustomButton(
                            text: "Done",
                            onTap: () {
                              GoRouter.of(context).push(AppRouter.homeView);
                            },
                            height: 55.h,
                            width: 180.w,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Text('Verify', style: Styles.text9),
          ),
        ],
      ),
    );
  }
}
/*
    return BlocConsumer<AuthCubit, AuthCubitState>(
        listener: (BuildContext context, state) {
      if (state is AuthCubitSuccessState) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Verify Successful! ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.green,
        ));
        GoRouter.of(context).pushReplacement(AppRouter.verifyView);
      } else if (state is AuthCubitFailureState) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
            "Verify Failed :${state.error} ",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ));
      }
    }, builder: (context, state) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PinCodeTextField(
              controller: otpController,
              obscureText: false,
              keyboardType: TextInputType.number,
              length: 6,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.underline,
                activeColor: Colors.black,
                selectedColor: Colors.black,
                inactiveColor: const Color(0xFFF04C29),
                borderRadius: BorderRadius.circular(10.r),
                fieldWidth: 32.w,
              ),
              onCompleted: (v) async {
                // await context
                //     .read<AuthCubit>()
                //     .verifyEmail(code: otpController.text, email: widget.email);
              },
              onChanged: (value) {},
              beforeTextPaste: (text) {
                return true;
              },
              appContext: context,
            ),
            SizedBox(height: 30.h), // Spacing between OTP field and button
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(COLORS.color6),
                  minimumSize: MaterialStateProperty.all(Size(323.w, 40.h)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.r),
                    ),
                  )),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: COLORS.color1,
                      content: Container(
                        height: 350.h,
                        width: 327.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                                child: Image.asset(
                              Images().alertdialog,
                              height: 200.h,
                              width: 200.w,
                            )),
                            Text("Success", style: Styles.text10),
                            Text(
                              "You have successfully reset your password.",
                              style: Styles.text13,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            CustomButton(
                              text: "Done",
                              onTap: () {

                              },
                              height: 55.h,
                              width: 180.w,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Text('Verify', style: Styles.text9),
            ),
          ],
        ),
      );
    });

 */