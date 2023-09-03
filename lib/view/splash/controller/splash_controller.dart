import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  Rx<PageController> pageController = PageController().obs;
  RxBool onLastPage = true.obs;
}
