import 'package:get/get.dart';
import 'package:test_task/core/app_route.dart';

class SplashController extends GetxController{
  @override
  void onInit(){
    super.onInit();
    goNext();
  }
  void goNext()async{
    await Future.delayed(Duration(seconds: 2));
    Get.offAll(AppRoute.onboardingScreen);
  }
}