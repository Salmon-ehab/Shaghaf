import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shagaf/core/assets/styels.dart';

import '../../../../../core/assets/colors.dart';
import '../../../data/item_data.dart';
import 'birthday_widget/birthday_body.dart';

class BirthdayPhotoModel extends StatefulWidget {
  BirthdayPhotoModel(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.isbirthday,
      required this.style,
      required this.item,
      required this.salary,
      required this.onTap, required this.updateGrandTotal});
  final String image;
  final String text1;
  final String text2;
  final int salary;
  final Function() onTap;
  final bool isbirthday;
  final TextStyle style;
  final Item item;
  final Function() updateGrandTotal; // دالة لتحديث المجموع

  @override
  State<BirthdayPhotoModel> createState() => _BirthdayPhotoModelState();
}

class _BirthdayPhotoModelState extends State<BirthdayPhotoModel> {
  @override

  Widget build(BuildContext context) {

    return Container(
      height: 80.h,
      width: 342.w,
      margin: EdgeInsets.only(bottom: 15.h),
      padding: EdgeInsets.only(left: 5.w, right: 5.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12.r)),
        color: widget.item.isPressed == true
            ? COLORS.color3.withOpacity(.38)
            : COLORS.color1,
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
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      width: 165.w,
                      child: Text(widget.text1, style: widget.style)),
                  Row(
                    children: [
                      Text("${widget.salary}", style: Styles.text52),
                      Text(widget.text2, style: Styles.text52),
                    ],
                  ),
                ],
              ),
            ],
          ),
          widget.item.isPressed == true
              ? widget.isbirthday == true?
          Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          if (widget.item.number > 0) {
                            widget.item.number--;
                            widget.item.totalSalary = widget.item.Salary * widget.item.number;
                          }
                          if (widget.item.number == 0) {
                            widget.item.isPressed = false;
                          }
                          widget.updateGrandTotal(); // استدعاء الدالة هنا
                        });
                      },
                      child: CircleAvatar(
                          radius: 15.r,
                          backgroundColor: COLORS.color43,
                          child: Padding(
                            padding: EdgeInsets.only(left: 5.w, right: 5.w),
                            child: Divider(
                                height: 2.h,
                                thickness: 3.w,
                                color: COLORS.color3.withOpacity(.5)),
                          )),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text("${widget.item.number}", style: Styles.text18),
                    SizedBox(
                      width: 8.w,
                    ),
                    InkWell(
                      onTap: () {
                            setState(() {
                              widget.item.number++;
                              widget.item.totalSalary = widget.item.Salary * widget.item.number;
                              widget.updateGrandTotal(); // استدعاء الدالة هنا
                            });

                      },
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: COLORS.color43,
                        child: Icon(
                          Icons.add,
                          color: COLORS.color3,
                        ),
                      ),
                    )
                  ],
                ):SizedBox.shrink()
              : Row(
                  children: [
                    InkWell(
                      onTap: widget.onTap,
                      child: CircleAvatar(
                        radius: 15.r,
                        backgroundColor: COLORS.color43,
                        child: Icon(
                          Icons.add,
                          color: COLORS.color3,
                        ),
                      ),
                    )
                  ],
                ),
        ],
      ),
    );
  }
}
