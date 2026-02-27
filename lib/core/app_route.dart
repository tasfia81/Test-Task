import 'package:get/get.dart';
import 'package:test_task/screen/onboarding_screen.dart';

class AppRoute{
  ///======================== INITIAL ROUTES ========================
  static const String onboardingScreen = '/onboarding_screen';



  ///======================== AUTHENTICATION ROUTES =====================
   static List<GetPage> routes = [
     GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
   ];

}