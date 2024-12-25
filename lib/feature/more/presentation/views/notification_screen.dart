import 'package:flutter/material.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/notification_widget/notification_body.dart';

import '../../../../core/assets/colors.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body:NotificationBody(),
    );
  }
}
