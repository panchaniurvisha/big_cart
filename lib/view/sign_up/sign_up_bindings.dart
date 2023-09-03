import 'package:big_cart_app/view/sign_up/sign_up_controller.dart';
import 'package:get/get.dart';

class SignUpBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(SignUpController());
  }
}
