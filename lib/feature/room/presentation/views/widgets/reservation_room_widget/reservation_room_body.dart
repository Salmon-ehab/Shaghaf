import 'package:flutter/cupertino.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/reservation_details_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/reservation_room_widget/reserve_carousel_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/rooms_widget/rooms_model.dart';


class ReservationRoomBody extends StatefulWidget {
  const ReservationRoomBody({super.key, required this.roomsModel1});
 final RoomsModel roomsModel1;
  @override
  State<ReservationRoomBody> createState() => _ReservationRoomBodyState();
}

class _ReservationRoomBodyState extends State<ReservationRoomBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          ReservationCarouselWidget(roomsModel: widget.roomsModel1),
         ReservationDetailsWidget(roomsModel2: widget.roomsModel1,),

        ],
      ),
    );
  }
}
