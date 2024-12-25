import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../../../core/assets/styels.dart';

class TimerWidget extends StatefulWidget {
  @override
  _TimerWidgetState createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late Timer _timer;
  String _formattedTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    final now = DateTime.now();
    final formatter = DateFormat('HH:mm:ss');
    final formattedTime = formatter.format(now);

    setState(() {
      _formattedTime = formattedTime;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final timeParts = _formattedTime.split(':');
    final hours = timeParts.isNotEmpty ? timeParts[0] : '00';
    final minutes = timeParts.length > 1 ? timeParts[1] : '00';
    final seconds = timeParts.length > 2 ? timeParts[2] : '00';

    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hours,
            style: Styles.text43,
          ),
          SizedBox(width: 5.w),
          Text(
            ':',
            style: Styles.text42,
          ),
          SizedBox(width: 5.w),
          Text(
            minutes,
            style: Styles.text42,
          ),
          SizedBox(width: 5.w),
          Text(
            ':',
            style: Styles.text42,
          ),
          SizedBox(width: 5.w),
          Text(
            seconds,
            style: Styles.text42,
          ),
        ],
      ),
    );
  }
}