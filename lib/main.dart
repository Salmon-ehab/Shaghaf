 import 'package:flutter/material.dart';
import 'package:shagaf/core/go_route.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

main(){
  runApp(shagafApp());
 }

class shagafApp extends StatelessWidget {
   shagafApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(390,844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder:(_,child){
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
         routerConfig: AppRouter.router,

        );
      },


    );
  }
}
