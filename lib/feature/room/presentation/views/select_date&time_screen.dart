import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/select_date&time_widget/select_date_body.dart';

class SelectDateScreen extends StatelessWidget {
  const SelectDateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: SelectDateBody(),
    );
  }
}
