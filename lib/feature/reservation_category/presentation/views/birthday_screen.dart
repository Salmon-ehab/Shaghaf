import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/widgets/birthday_widget/birthday_body.dart';

class BirthdayScreen extends StatelessWidget {
  const BirthdayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: BirthdayBody(),
    );
  }
}
