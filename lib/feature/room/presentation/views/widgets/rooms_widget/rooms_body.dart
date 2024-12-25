import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/rooms_widget/rooms_model.dart';

import '../../../../../../core/widgets/custom_appbar.dart';

class RoomsBody extends StatelessWidget {
  const RoomsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h,left: 10.w),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 35.h),
            CustomAppbar( text: 'Rooms'),
            SizedBox(height: 20.h),
            RoomsModel(text: "Training room", assetName: '${Images().trainingRoom}',),
            RoomsModel(text: "Funny room", assetName: '${Images().funnyRoom}',),
            RoomsModel(text: "Meeting room", assetName: '${Images().meetingRoom}',),
            RoomsModel(text: "one to one meeting", assetName: '${Images().oneToOneRoom}',),
          ],
        ),
      ),
    );
  }
}
