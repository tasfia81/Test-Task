import 'package:get/get.dart';
import 'package:test_task/screen/add_product.dart';
import 'package:test_task/screen/edit_product.dart';
import 'package:test_task/screen/enable_location.dart';
import 'package:test_task/screen/forgot_password.dart';
import 'package:test_task/screen/home_screen.dart';
import 'package:test_task/screen/label_verify_code.dart';
import 'package:test_task/screen/onboarding_screen.dart';
import 'package:test_task/screen/product_details.dart';
import 'package:test_task/screen/profile_screen.dart';
import 'package:test_task/screen/reset_password.dart';
import 'package:test_task/screen/select_language.dart';
import 'package:test_task/screen/set_up_profile.dart';
import 'package:test_task/screen/signin.dart';
import 'package:test_task/screen/submit_verify_code.dart';
import 'package:test_task/widget/submit_showDialog.dart';

import '../screen/signup.dart';

class AppRoute{
  ///======================== INITIAL ROUTES ========================
  static const String onboardingScreen = '/onboarding_screen';
  static const String signIn = '/signin';
  static const String signUp = '/signup';
  static const String forgotPassword = '/forgot_password';
  static const String resetPassword = '/reset_password';
  static const String labelVerify = '/label_verify_code';
  static const String submitVerify = '/submit_verify_code';
  static const String submitShowDailog = '/submit_showDailog';
  static const String enableLocation = '/enable_location';
  static const String selectLanguage = '/select_language';
  static const String setUpProfile = '/set_up_profile';
  static const String homeScreen = '/home_screen';
  static const String productDetails = '/product_details';
  static const String editProduct = '/edit_product';
  static const String addProduct = '/add_product';
  static const String profileScreen = '/profile_screen';



  ///======================== AUTHENTICATION ROUTES =====================
   static List<GetPage> routes = [
     GetPage(name: onboardingScreen, page: () => const OnboardingScreen()),
     GetPage(name: signIn, page: () => const SignIn()),
     GetPage(name: signUp, page: () => const SignUp()),
     GetPage(name: forgotPassword, page: () => const ForgotPassword()),
     GetPage(name: resetPassword, page: () => const ResetPassword()),
     GetPage(name: labelVerify, page: () => const LabelVerifyCode()),
     GetPage(name: submitVerify, page: () => const SubmitVerifyCode()),
     GetPage(name: submitShowDailog, page: () => const SubmitShowdialog()),
     GetPage(name: enableLocation, page: () => const EnableLocation()),
     GetPage(name: selectLanguage, page: () => const SelectLanguage()),
     GetPage(name: setUpProfile, page: () => const SetUpProfile()),
     GetPage(name: homeScreen, page: () => const HomeScreen()),
     GetPage(name: productDetails, page: () => const ProductDetails()),
     GetPage(name: editProduct, page: () => const EditProduct()),
     GetPage(name: addProduct, page: () => const AddProduct()),
     GetPage(name: profileScreen, page: () => const ProfileScreen()),
   ];

}