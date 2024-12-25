import 'package:flutter/material.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/reservation_room_body.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/rooms_widget/rooms_model.dart';

class ReservationRoomScreen extends StatefulWidget {

  final RoomsModel roomsModel;

  const ReservationRoomScreen({
    Key? key, required this.roomsModel,

  }) : super(key: key);


  @override
  State<ReservationRoomScreen> createState() => _ReservationRoomScreenState();
}

class _ReservationRoomScreenState extends State<ReservationRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReservationRoomBody(roomsModel1: widget.roomsModel,),
    );
  }
}
