import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/common/media_query.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';
import '../../res/constant/app_string.dart';
import 'controller/splash_controller_three.dart';

class SplashScreenThree extends GetView<SplashControllerThree> {
  const SplashScreenThree({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashThree,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
            top: height(context) / 10,
            left: width(context) / 5,
            child: Text(
              textAlign: TextAlign.center,
              AppString.buyPremium,
              style: TextStyle(
                height: 0.9,
                color: AppColors.black,
                fontSize: height(context) / 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
