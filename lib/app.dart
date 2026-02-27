import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/screen/splash_screen.dart';

class TestTask extends StatefulWidget {
  const TestTask({super.key});

  @override
  State<TestTask> createState() => _TestTaskState();
}

class _TestTaskState extends State<TestTask> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context,child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          getPages: AppRoute.routes,
          home: SplashScreen(),
        );
      },
    );
  }
}
