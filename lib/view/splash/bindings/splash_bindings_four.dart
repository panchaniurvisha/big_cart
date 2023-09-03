import 'package:big_cart_app/view/splash/controller/splash_controller_four.dart';
import 'package:get/get.dart';

class SplashBindingsFour implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SplashControllerFour());
  }
}
