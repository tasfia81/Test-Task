import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test_task/controller/onboarding_controller.dart';

import '../core/app_route.dart';
import '../widget/custom_primary_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late OnboardingController controller;

  @override
  void initState() {
    super.initState();
    controller = Get.put(OnboardingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<OnboardingController>(
          builder: (controller) => Column(
            children: [
              ///========================= PageView ==================================
              Expanded(
                child: PageView.builder(
                  controller: controller.pageController,
                  itemCount: controller.onboardingData.length,
                  onPageChanged: controller.onPageChanged,
                  itemBuilder: (context, index) {
                    final item = controller.onboardingData[index];
                    return Padding(
                      padding: EdgeInsets.all(20.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            item["image"]!,
                            height: 327.h.clamp(250, 327),
                            width: 327.w.clamp(250, 327),
                          ),
                          SizedBox(height: 20.h),
                          Text(
                            item["title"]!,
                            style: TextStyle(
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF2D2D2D),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10.h),
                          Text(
                            item["desc"]!,
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF636F85),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              ///======================== Dots ===============================
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  controller.onboardingData.length,
                  (index) => Container(
                    margin: EdgeInsets.all(4.w),
                    width: controller.currentPage == index ? 12 : 8,
                    height: 8.h,
                    decoration: BoxDecoration(
                      color: controller.currentPage == index
                          ? Color(0xff1B6EF7)
                          : Color(0xffCCE2FF),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                  ),
                ),
              ),
                SizedBox(height: 80.h),

              ///======================= Button =============================
              CustomPrimaryButton(
                text:
                    controller.currentPage ==
                        controller.onboardingData.length - 1
                    ? "Get Started"
                    : "Next",
                width: 327.w,
               // height: 56.h,
                onTap: () {
                  controller.nextPage();
                  //Get.toNamed(AppRoute.signUp);
                },
                borderRadius: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
