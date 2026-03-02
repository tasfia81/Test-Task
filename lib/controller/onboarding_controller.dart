import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/core/app_route.dart';
import 'package:test_task/utils/assets_path.dart';

class OnboardingController extends GetxController {
  final PageController pageController = PageController();
  var currentPage = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": AssetsPath.onboarding_1,
      "title": "Best online courses\nin the world",
      "desc": "Now you can learn anywhere, anytime, even if\nthere is no internet access!"
    },
    {
      "image": AssetsPath.onboarding_2,
      "title": "Explore your new skill\ntoday",
      "desc": "Our platform is designed to help you explore\nnew skills. Let’s learn & grow with Eduline!"
    },
  ];

  void onPageChanged(int index) {
    currentPage = index;
    update(); // UI update
  }

  void nextPage() {
    if (currentPage < onboardingData.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.easeInOut,
      );
    } else {
      Get.offAllNamed(AppRoute.signIn);
    }
  }
}


