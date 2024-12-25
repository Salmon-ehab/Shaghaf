import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shagaf/core/assets/colors.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_review_widget/booking_review_body.dart';

class BookingReviewScreen extends StatelessWidget {
  const BookingReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color23,
      body: BookingReviewBody(),
    );
  }
}
