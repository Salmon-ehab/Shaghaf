import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/assets/colors.dart';
import '../../../../../../core/assets/styels.dart';

class ItemModel extends StatefulWidget {
  const ItemModel(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.salary});
  final String image;
  final String text1;
  final String text2;
  final int salary;

  @override
  State<ItemModel> createState() => _ItemModelState();
}

class _ItemModelState extends State<ItemModel> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 342.w,
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        color: COLORS.color1,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3), // لون الظل
            offset: Offset(0, 2), // إزاحة رأسية 3 وحدات
            blurRadius: 1.8.r,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.r),
                    child: Image.asset(
                      widget.image,
                      height: 60.h,
                      width: 60.w,
                      fit: BoxFit.fill,
                    )),
              ),
              SizedBox(
                width: 13.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 165.w,
                      child: Text(widget.text1, style: Styles.text59)),
                  Row(
                    children: [
                      Text("${widget.salary}", style: Styles.text60),
                      Text(widget.text2, style: Styles.text60)
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 90.w,
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(8.r)),
                      color: COLORS.color1,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3), // لون الظل
                          offset: Offset(-2, 3), // إزاحة رأسية 3 وحدات
                          blurRadius: 8.r,
                          spreadRadius:2.4,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                           setState(() {
                             if (num > 0) {
                               num--;
                             } else {
                               num = 0;
                             }
                           });
                          },
                          child: SizedBox(
                            height: 24.h,
                            width: 15.w,
                            child: Divider(
                                height: 15.h,
                                thickness: 3.w,
                                color:num>0 ?COLORS.color3: COLORS.color3.withOpacity(.5)),
                          ),
                        ),
                        Text("$num"),
                        InkWell(
                          onTap: (){
                            setState(() {
                              num++;
                            });
                          },
                            child: Icon(Icons.add, color: COLORS.color3))
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
