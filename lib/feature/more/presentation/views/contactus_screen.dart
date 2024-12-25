import 'package:flutter/material.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/contactus_widget/contactus_body.dart';

import '../../../../core/assets/colors.dart';

class ContactusScreen extends StatelessWidget {
  const ContactusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body:ContactUsBody()
    );
  }
}
