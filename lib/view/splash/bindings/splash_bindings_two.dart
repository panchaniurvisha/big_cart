import 'package:big_cart_app/view/splash/controller/splash_controller_two.dart';
import 'package:get/get.dart';

class SplashBindingsTwo implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashControllerTwo);
  }
}
