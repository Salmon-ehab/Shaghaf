import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shagaf/core/assets/images.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/go_route.dart';

class SplashWidget extends StatefulWidget {
   SplashWidget({super.key});

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive); // لعرض الشاشة كاملة بدون شريط الاشعارات
    Future.delayed( Duration(seconds: 4), () {
      GoRouter.of(context).go(AppRouter.onBordingView);
    });
  }
  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values);  // نرجع شريط الحالة والتنقل
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(Images().splashImage),
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}
