import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shagaf/core/assets/styels.dart';
import 'package:shagaf/core/widgets/custom_appbar.dart';
import 'package:shagaf/core/widgets/custom_button.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_review_widget/booking_details.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_review_widget/discount_widget.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_review_widget/payment_method.dart';
import 'package:shagaf/feature/room/presentation/views/widgets/booking_review_widget/room_type.dart';
import '../../../../../../core/assets/colors.dart';

class BookingReviewBody extends StatelessWidget {
  const BookingReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 45.h, bottom: 20.h, left: 20.w, right: 20.w),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppbar(
               text: "Booking Review"),
            RoomType(),
            BookingDetails(),
            PaymentMethod(),
            DiscountWidget(),
            CustomButton(text: "Book", height: 52.h, width: 342.w),
            Padding(
              padding:  EdgeInsets.only(top:15.h),
              child: InkWell(
                onTap:(){
                  GoRouter.of(context).pop();
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.r),
                    color:COLORS.color1 ,
                  ),
                  height: 52.h,
                  width:342.w,
                  child: Center(child: Text("Cancellation Policy",style: Styles.text40)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
