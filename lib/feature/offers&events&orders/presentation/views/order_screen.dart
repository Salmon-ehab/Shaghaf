import 'package:flutter/material.dart';
import 'package:shagaf/feature/offers&events&orders/presentation/views/widgets/order_widget/order_body.dart';

import '../../../../core/assets/colors.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: OrderBody(),
    );
  }
}
