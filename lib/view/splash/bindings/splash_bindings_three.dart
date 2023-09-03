import 'package:big_cart_app/view/splash/controller/splash_controller_three.dart';
import 'package:get/get.dart';

class SplashBindingsThree implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashControllerThree());
  }
}
