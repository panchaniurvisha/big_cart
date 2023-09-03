import 'package:big_cart_app/view/wellCome/wellcome_controller.dart';
import 'package:get/get.dart';

class WellComeBindings implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(WellComeController());
  }
}
