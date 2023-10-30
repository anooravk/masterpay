import 'dart:async';
import 'package:get/get.dart';


import '../onboarding_screen.dart';

class SplashController extends GetxController{
  @override
  void onInit() {

    Timer(
      const Duration(seconds: 6),
          () =>
          Get.off(const OnBoardingScreen()),
    );
    super.onInit();
  }
}