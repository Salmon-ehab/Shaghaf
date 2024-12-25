import 'package:flutter/material.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/rooms_widget/rooms_body.dart';

import '../../../../core/assets/colors.dart';

class RoomsScreen extends StatefulWidget {
  const RoomsScreen({super.key});

  @override
  State<RoomsScreen> createState() => _RoomsScreenState();
}

class _RoomsScreenState extends State<RoomsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: COLORS.color1,
      body: RoomsBody(),
    );
  }
}
