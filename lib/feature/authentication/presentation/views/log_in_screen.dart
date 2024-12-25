import 'package:flutter/material.dart';
import 'package:shagaf/feature/authentication/presentation/views/widgets/log_in_widget/log_in_body.dart';

import '../../../../core/assets/colors.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: LogInBody(),
    );
  }
}
