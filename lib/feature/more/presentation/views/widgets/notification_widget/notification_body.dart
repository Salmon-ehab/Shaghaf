import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/feature/more/presentation/views/widgets/notification_widget/notification_model.dart';

import '../../../../../../core/widgets/custom_appbar.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 45.h, left: 10.w, right: 10.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(text: "Notification"),
            SizedBox(height: 25.h,),
            SizedBox(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder:(BuildContext context,int index ){
                return NotificationModel();
              },
              ),
            )
          ],
        ),
      ),
    );

  }
}
