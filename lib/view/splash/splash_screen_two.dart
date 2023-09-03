import 'package:big_cart_app/view/splash/controller/splash_controller_two.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/common/media_query.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';
import '../../res/constant/app_string.dart';

class SplashScreenTwo extends GetView<SplashControllerTwo> {
  const SplashScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashTwo,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
            top: height(context) / 10,
            left: width(context) / 5,
            child: Text(
              textAlign: TextAlign.center,
              AppString.buyQuality,
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
