import 'package:big_cart_app/res/common/app_eleveted_button.dart';
import 'package:big_cart_app/res/common/media_query.dart';
import 'package:big_cart_app/res/constant/app_colors.dart';
import 'package:big_cart_app/res/constant/app_string.dart';
import 'package:big_cart_app/utils/routes/routes_name.dart';
import 'package:big_cart_app/view/wellCome/wellcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../res/constant/app_images.dart';

class WellComeScreen extends GetView<WellComeController> {
  const WellComeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                AppImages.welCome,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(width(context) / 40),
                      topLeft: Radius.circular(
                        width(context) / 40,
                      )),
                ),
                child: Column(
                  children: [
                    Text(AppString.wellComeText,
                        style: TextStyle(
                            color: AppColors.black,
                            fontSize: height(context) / 25,
                            fontWeight: FontWeight.w600)),
                    Text(
                      AppString.title,
                      style: TextStyle(
                        color: AppColors.greay,
                        fontSize: height(context) / 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      AppString.secondTitle,
                      style: TextStyle(
                        height: 0.5,
                        color: AppColors.greay,
                        fontSize: height(context) / 45,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    AppElevatedButton(
                      onPressed: () {},
                      color: AppColors.white,
                      image: AppImages.googleLogo,
                      text: AppString.continueWithGoogle,
                      colorBlack: AppColors.black,
                    ),
                    AppElevatedButton(
                      onPressed: () {
                        debugPrint("Signup Screen............");
                        Navigator.pushNamedAndRemoveUntil(
                            context, RoutesName.signUpScreen, (route) => false);
                      },
                      image: AppImages.profile,
                      text: AppString.createAccount,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          AppString.haveAccount,
                          style: TextStyle(
                            color: AppColors.greay,
                            fontSize: height(context) / 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          AppString.login,
                          style: TextStyle(
                            color: AppColors.black,
                            fontSize: height(context) / 45,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
