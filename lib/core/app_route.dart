import 'package:get/get.dart';
import 'package:test_task/screen/forgot_password.dart';
import 'package:test_task/screen/onboarding_screen.dart';
import 'package:test_task/screen/reset_password.dart';
import 'package:test_task/screen/signin.dart';

import '../screen/signup.dart';

class AppRoute{
  ///======================== INITIAL ROUTES ========================
  static const String onboardingScreen = '/onboarding_screen';
  static const String signIn = '/signin';
  static const String signUp = '/signup';
  static const String forgotPassword = '/forgot_password';
  static const String resetPassword = '/reset_password';



  ///======================== AUTHENTICATION ROUTES =====================
   static List<GetPage> routes = [
     GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
     GetPage(name: signIn, page: () => const SignIn()),
     GetPage(name: signUp, page: () => const SignUp()),
     GetPage(name: forgotPassword, page: () => const ForgotPassword()),
     GetPage(name: resetPassword, page: () => const ResetPassword()),
   ];

}