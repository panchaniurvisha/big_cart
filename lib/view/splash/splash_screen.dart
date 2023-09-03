import 'package:big_cart_app/res/common/app_eleveted_button.dart';
import 'package:big_cart_app/res/common/media_query.dart';
import 'package:big_cart_app/utils/routes/routes_name.dart';
import 'package:big_cart_app/view/splash/controller/splash_controller.dart';
import 'package:big_cart_app/view/splash/splash_screen_four.dart';
import 'package:big_cart_app/view/splash/splash_screen_one.dart';
import 'package:big_cart_app/view/splash/splash_screen_three.dart';
import 'package:big_cart_app/view/splash/splash_screen_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_string.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: Stack(alignment: Alignment.bottomCenter, children: [
          Obx(() {
            return PageView(
              controller: controller.pageController.value,
              children: const [
                SplashScreenOne(),
                SplashScreenTwo(),
                SplashScreenThree(),
                SplashScreenFour(),
              ],
            );
          }),
          Align(
            alignment: const Alignment(0, -0.55),
            child: Text(
              AppString.title,
              style: TextStyle(
                color: AppColors.greay,
                fontSize: height(context) / 45,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, -0.50),
            child: Text(
              AppString.secondTitle,
              style: TextStyle(
                color: AppColors.greay,
                fontSize: height(context) / 45,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SmoothPageIndicator(
                    controller: controller.pageController.value,
                    count: 4,
                    effect: SlideEffect(
                        activeDotColor: Colors.green,
                        dotColor: Colors.grey,
                        dotHeight: height(context) / 120,
                        dotWidth: width(context) / 60))
              ],
            ),
          ),
          Obx(
            () {
              debugPrint(
                  "---------------------->${controller.onLastPage.value}");
              return controller.onLastPage.value
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ).copyWith(bottom: 60),
                      child: AppElevatedButton(
                        sizeBox: const SizedBox(),
                        onPressed: () {
                          debugPrint("well_come Screen..........");
                          Navigator.pushNamedAndRemoveUntil(context,
                              RoutesName.wellComeScreen, (route) => false);
                        },
                        text: AppString.buttonTitle,
                      ))
                  : Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ).copyWith(bottom: 60),
                      child: AppElevatedButton(
                        sizeBox: const SizedBox(),
                        onPressed: () => controller.pageController.value
                            .nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn),
                        text: AppString.buttonTitle,
                      ),
                    );
            },
          ),
        ]),
      ),
    );
  }
}
