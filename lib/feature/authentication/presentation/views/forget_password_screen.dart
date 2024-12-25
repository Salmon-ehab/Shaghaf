import 'package:flutter/material.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/forget_password_widget/forget_password_body.dart';
import '../../../../core/assets/colors.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: ForgetPasswordBody(),
    );
  }
}
