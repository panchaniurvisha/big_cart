import 'package:big_cart_app/utils/routes/routes_name.dart';
import 'package:big_cart_app/view/sign_up/sign_up_bindings.dart';
import 'package:big_cart_app/view/sign_up/sign_up_screen.dart';
import 'package:big_cart_app/view/splash/bindings/splash_bindings_one.dart';
import 'package:big_cart_app/view/splash/splash_screen_four.dart';
import 'package:big_cart_app/view/wellCome/wellcome_screen.dart';
import 'package:get/get.dart';

import '../../view/splash/bindings/splash_bindings.dart';
import '../../view/splash/bindings/splash_bindings_four.dart';
import '../../view/splash/bindings/splash_bindings_three.dart';
import '../../view/splash/bindings/splash_bindings_two.dart';
import '../../view/splash/splash_screen.dart';
import '../../view/splash/splash_screen_one.dart';
import '../../view/splash/splash_screen_three.dart';
import '../../view/splash/splash_screen_two.dart';
import '../../view/wellCome/wellcome_bindings.dart';

class AppRoutes {
  static List<GetPage> getPages = [
    GetPage(
      name: RoutesName.splashScreen,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: RoutesName.splashScreenOne,
      page: () => const SplashScreenOne(),
      binding: SplashBindingsOne(),
    ),
    GetPage(
      name: RoutesName.splashScreenOne,
      page: () => const SplashScreenTwo(),
      binding: SplashBindingsTwo(),
    ),
    GetPage(
      name: RoutesName.splashScreenOne,
      page: () => const SplashScreenThree(),
      binding: SplashBindingsThree(),
    ),
    GetPage(
      name: RoutesName.splashScreenOne,
      page: () => const SplashScreenFour(),
      binding: SplashBindingsFour(),
    ),
    GetPage(
      name: RoutesName.wellComeScreen,
      page: () => const WellComeScreen(),
      binding: WellComeBindings(),
    ),
    GetPage(
      name: RoutesName.signUpScreen,
      page: () => const SignUpScreen(),
      binding: SignUpBindings(),
    )
  ];
}
