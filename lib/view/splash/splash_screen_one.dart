import 'package:big_cart_app/res/common/media_query.dart';
import 'package:big_cart_app/res/constant/app_images.dart';
import 'package:big_cart_app/view/splash/controller/splash_controller_one.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constant/app_colors.dart';
import '../../res/constant/app_string.dart';

class SplashScreenOne extends GetView<SplashControllerOne> {
  const SplashScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppImages.splashOne,
            fit: BoxFit.fill,
            width: double.infinity,
          ),
          Positioned(
            top: height(context) / 10,
            left: width(context) / 4,
            child: Text(
              textAlign: TextAlign.center,
              AppString.wellCome,
              style: TextStyle(
                color: AppColors.black,
                fontSize: height(context) / 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: height(context) / 6.5,
            left: width(context) / 3,
            child: Image.asset(AppImages.bigCart, height: height(context) / 18),
          ),
        ],
      ),
    ));
  }
}
