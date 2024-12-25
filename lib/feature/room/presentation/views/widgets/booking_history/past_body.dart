import 'package:flutter/cupertino.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_history/booking_model.dart';

class PastBody extends StatelessWidget {
  const PastBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BookingModel(roomName: "Training Room", date: "17/2/2024", time: "09:00 Am", seats: "x1", deposit: "50.00 LE", reastOfMoney: "30.00 LE", coffee: "20.00 LE", status: "Paid"),
        BookingModel(roomName: "Meeting Room", date: "15/2/2024", time: "09:00 Am", seats: "x1", deposit: "50.00 LE", reastOfMoney: "30.00 LE", coffee: "00.00 LE", status:null),
        BookingModel(roomName: "Funny Room", date: "10/2/2024", time: "09:00 Am", seats: "x1", deposit: "50.00 LE", reastOfMoney: "30.00 LE", coffee: "00.00 LE", status: null),

      ],
    );
  }
}
