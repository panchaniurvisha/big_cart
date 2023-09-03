import 'package:big_cart_app/view/splash/controller/splash_controller_one.dart';
import 'package:get/get.dart';

class SplashBindingsOne implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<SplashControllerOne>(SplashControllerOne());
  }
}
