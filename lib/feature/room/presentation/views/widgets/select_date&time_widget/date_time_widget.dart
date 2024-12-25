import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../core/assets/colors.dart';
import 'number_picker_widget.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedFromTime = TimeOfDay.now();
  TimeOfDay selectedToTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            headerStyle: HeaderStyle(
              titleCentered: true,
              formatButtonVisible: false,
            ),
            daysOfWeekVisible: true,
            focusedDay: selectedDate,
            firstDay: DateTime(2000),
            lastDay: DateTime(2100),
            selectedDayPredicate: (day) => isSameDay(day, selectedDate),
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                selectedDate = selectedDay;
              });
            },
            calendarStyle: CalendarStyle(
              selectedDecoration: BoxDecoration(
                color:COLORS.color3, // أو أي لون تريده
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(

                color:COLORS.color5, // أو أي لون تريده
                shape: BoxShape.circle,
              ),

            ),
          ),
          SizedBox(height: 10.h),
          Text("From:", style: TextStyle(fontSize: 16.sp)), // استخدم TextStyle مباشرةً
          NumberPickerWidget(), // تأكد من أن لديك هذا الودجت معرفًا
          Text("To:", style: TextStyle(fontSize: 16.sp)),
          NumberPickerWidget(), // تأكد من أن لديك هذا الودجت معرفًا
        ],
      ),
    );
  }
}