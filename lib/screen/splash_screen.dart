import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:test_task/controller/splash_controller.dart';
import 'package:test_task/screen/onboarding_screen.dart';
import 'package:test_task/utils/assets_path.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   Get.put(SplashController());
  // }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreen()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                height: 124.h.clamp(120, 130),
                width: 124.w.clamp(120, 130),
                AssetsPath.car,
              ),
              const SizedBox(height: 15),
              Text(
                'Theory test in my language',
                style: TextStyle(
                  fontSize: 22.sp.clamp(20, 25),
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF2D2D2D),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'I must write the real test will be in English\n  language and this app just helps you to\n      understand the materials in your\n                          language',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF636F85),
                ),
              ),
              const SizedBox(height: 30),
              // CircularProgressIndicator(
              //   color: Color(0xFF1B6EF7),
              //   strokeWidth: 2,
              // ),
              SpinKitFadingCircle(
                color: Color(0xFF1B6EF7),
                size: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
