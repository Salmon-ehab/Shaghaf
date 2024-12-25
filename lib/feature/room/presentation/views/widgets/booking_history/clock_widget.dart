import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math';

import 'package:shagaf/core/assets/styels.dart';

class Clock extends StatefulWidget {
  const Clock({super.key});

  @override
  ClockState createState() => ClockState();
}

class ClockState extends State<Clock> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(
                () {}); // Check if the widget is still mounted before calling setState
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240.w,
      height: 240.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color(0xFFFFFFFF),
                  spreadRadius: 2,
                  blurRadius: 30,
                  offset: Offset(-15, -8),
                ),
              ],
              shape: BoxShape.circle,
            ),
          ),
          Container(
            constraints: const BoxConstraints.expand(),
            child: CustomPaint(
              painter: ClockPainter(context: context),
            ),
          ),
        ],
      ),
    );
  }
}

class ClockPainter extends CustomPainter {
  final BuildContext context;

  ClockPainter({super.repaint, required this.context});

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = min(centerY, centerX);

    Paint dashPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.square;

    double outerRadius = radius - 10.w;
    double innerRadius = radius - 20.w;
    for (int i = 0; i < 360; i += 30) {
      double angle = i * pi / 180;
      double x1 = centerX - outerRadius * cos(angle);
      double y1 = centerY - outerRadius * sin(angle);
      double x2 = centerX - innerRadius * cos(angle);
      double y2 = centerY - innerRadius * sin(angle);
      if (i % 90 == 0) {
        // Draw numbers instead of lines for 3, 6, 9, and 12
        TextPainter textPainter = TextPainter(
          text: TextSpan(
            text: (i == 0)
                ? '9'
                : (i == 90)
                ? '12'
                : (i == 180)
                ? '3'
                : '6',
            style:Styles.text18,
          ),
          textDirection: TextDirection.ltr,
        );
        textPainter.layout();
        double textWidth = textPainter.width;
        double textHeight = textPainter.height;
        Offset textOffset = Offset(x1 - textWidth / 2, y1 - textHeight / 2);
        textPainter.paint(canvas, textOffset);
      } else {
        canvas.drawLine(Offset(x1, y1), Offset(x2, y2), dashPaint);
      }
    }

    DateTime dateTime = DateTime.now();
    Offset secondStartOffset = Offset(
      centerX - outerRadius * 0.2 * cos((dateTime.second * 6 - 90) * pi / 180),
      centerY - outerRadius * 0.2 * sin((dateTime.second * 6 - 90) * pi / 180),
    );
    Offset secondEndOffset = Offset(
      centerX + outerRadius * cos((dateTime.second * 6 - 90) * pi / 180),
      centerY + outerRadius * sin((dateTime.second * 6 - 90) * pi / 180),
    );

    Offset minStartOffset = Offset(
      centerX - outerRadius * 0.2 * cos((dateTime.minute * 6 - 90) * pi / 180),
      centerY - outerRadius * 0.2 * sin((dateTime.minute * 6 - 90) * pi / 180),
    );
    Offset minEndOffset = Offset(
      centerX + outerRadius * .7 * cos((dateTime.minute * 6 - 90) * pi / 180),
      centerY + outerRadius * .7 * sin((dateTime.minute * 6 - 90) * pi / 180),
    );

    Offset hourStartOffset = Offset(
      centerX -
          outerRadius *
              0.2 *
              cos(((dateTime.hour % 12) * 30 - 90 + (dateTime.minute / 2)) *
                  pi /
                  180),
      centerY -
          outerRadius *
              0.2 *
              sin(((dateTime.hour % 12) * 30 - 90 + (dateTime.minute / 2)) *
                  pi /
                  180),
    );
    Offset hourEndOffset = Offset(
      centerX +
          outerRadius *
              .4 *
              cos(((dateTime.hour % 12) * 30 - 90 + (dateTime.minute / 2)) *
                  pi /
                  180),
      centerY +
          outerRadius *
              .4 *
              sin(((dateTime.hour % 12) * 30 - 90 + (dateTime.minute / 2)) *
                  pi /
                  180),
    );

    Paint secondPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 1
      ..strokeCap = StrokeCap.round;
    Paint minPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 3
      ..strokeCap = StrokeCap.round;
    Paint hourPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 6
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(minStartOffset, minEndOffset, minPaint);
    canvas.drawLine(hourStartOffset, hourEndOffset, hourPaint);
    canvas.drawLine(secondStartOffset, secondEndOffset, secondPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
