import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shagaf/core/assets/images.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';
import '../../../../../../core/widgets/custom_appbar2.dart';
import '../offer_event_model.dart';

class OfferBody extends StatefulWidget {
  const OfferBody({super.key});

  @override
  State<OfferBody> createState() => _OfferBodyState();
}

class _OfferBodyState extends State<OfferBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:
             EdgeInsets.only(top: 50.h, left: 15.w, right: 15.w, bottom: 20.h),
        child: Column(
          children: [
            CustomAppbar2(text: "Offers"),
            SizedBox(
              height: 20.h,
            ),
            GridView.count(
              padding: EdgeInsets.zero, // Remove padding
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.w,
              crossAxisCount: 2,
              shrinkWrap: true, // يسمح باستخدام GridView داخل ScrollView
              physics:
                  NeverScrollableScrollPhysics(), // منع التمرير في GridView
              children: List.generate(12, (index) {
                return OfferEventModel(
                  image: Images().offers,
                  text1: "Today’s offer",
                  text2: '''10% discount on 3
hours or more''',
                  onCall: () {
                  setState(() {
                     showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          contentPadding: EdgeInsets.zero,
                          backgroundColor: COLORS.color1,
                          content: Container(
                            height: 215.h,
                            width: 313.w,
                            padding: EdgeInsets.only(
                                top: 30.h, bottom: 30.h),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      Images().discount,
                                      height: 18.h,
                                      width: 22.w,
                                      color: COLORS.color6,
                                    ),
                                    Text(
                                      "30% off  10 booking (up to EGP 150)",
                                      style: Styles.text50,
                                    ),
                                  ],
                                ),
                                Transform.scale(
                                  scale: 1.5, // Increase scale by 1.5 times
                                  child: SvgPicture.asset(
                                    height: 30.h,
                                    width: 200.w,
                                    Images().discountOffer,
                                    fit: BoxFit.contain, // تكبير الصورة قدر الإمكان دون تشويه
                                  ),
                                ),
                                Container(
                                  height: 40.h,
                                  width: 113.w,
                                  decoration: BoxDecoration(
                                      color: COLORS.color11,
                                      borderRadius:BorderRadius.circular(15.r)
                                  ),
                                  child:MaterialButton(onPressed:(){},child:Text("Copy",style:Styles.text17)),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  });
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
