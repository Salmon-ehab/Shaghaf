import 'package:flutter/material.dart';
import 'package:shagaf/feature/reservation_category/presentation/views/widgets/photosession_widget/photosession_body.dart';

import '../../../../core/assets/colors.dart';

class PhotoSessionScreen extends StatelessWidget {
  const PhotoSessionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: PhotoSessionBody(),
    );
  }
}
