
import 'package:get/get.dart';
import 'package:test_task/controller/splash_controller.dart';

class DependencyInjection extends Bindings{
  @override
  void dependencies() {

    ///================ Auth Controller =================

     Get.lazyPut(() => SplashController(), fenix: true);

  }
}
