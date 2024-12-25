import 'package:flutter/cupertino.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/core/widgets/custom_carousel.dart';

import 'events_details.dart';

class EventsDetailsBody extends StatefulWidget {
  @override
  State<EventsDetailsBody> createState() => _EventsDetailsBodyState();
}

class _EventsDetailsBodyState extends State<EventsDetailsBody> {
 List<String> images=[
   Images().events,
   Images().events,
   Images().events,
   Images().events,
   Images().events,
   Images().events,

 ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Stack(
          children: [
            CustomCarousel(image:images , textAppBar:"Events"),
            EventsDetails(),
                      ],
        ),
    );
  }
}
