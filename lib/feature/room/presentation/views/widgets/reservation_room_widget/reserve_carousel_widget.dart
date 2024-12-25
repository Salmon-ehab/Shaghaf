import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/widgets/custom_carousel.dart';
import '../rooms_widget/rooms_model.dart';

class ReservationCarouselWidget extends StatefulWidget {
  ReservationCarouselWidget({super.key, required this.roomsModel});
  final RoomsModel roomsModel;

  @override
  State<ReservationCarouselWidget> createState() =>
      _ReservationCarouselWidgetState();
}

class _ReservationCarouselWidgetState extends State<ReservationCarouselWidget> {

  @override
  Widget build(BuildContext context) {
    List<String> ImageList = [
      widget.roomsModel.assetName,
      widget.roomsModel.assetName,
      widget.roomsModel.assetName,
      widget.roomsModel.assetName,
      widget.roomsModel.assetName,
      widget.roomsModel.assetName,
    ];
    return CustomCarousel(image: ImageList, textAppBar: '${widget.roomsModel.text}',);
  }
}
