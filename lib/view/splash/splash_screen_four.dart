import 'package:big_cart_app/view/splash/controller/splash_controller_four.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/common/media_query.dart';
import '../../res/constant/app_colors.dart';
import '../../res/constant/app_images.dart';
import '../../res/constant/app_string.dart';

class SplashScreenFour extends GetView<SplashControllerFour> {
  const SplashScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashFour,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
            top: height(context) / 10,
            left: width(context) / 5,
            child: Text(
              textAlign: TextAlign.center,
              AppString.getDiscount,
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
