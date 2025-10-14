import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivas/main.dart';
import 'package:nivas/screens/Slider.dart';


class SplashController extends GetxController {
  @override
void onInit() {
  super.onInit();
  _navigateToHome();
}

void _navigateToHome() {
  Timer(
    const Duration(seconds: 3),
        () => Get.off(() => const Slider_screen()),
  );
}
}

class Splash_screen extends StatelessWidget {
  const Splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    // The Get.put() call initializes your controller.
    final SplashController controller = Get.put(SplashController());

    // No need to check for isDarkMode here for the background,
    // the theme in GetMaterialApp handles it.

    return Scaffold(
      body: Center(
        // The logo remains the same in both light and dark modes.
        child: Image.asset(
          "assets/images/Nivas_Logo.png",
        ),
      ),
    );
  }
}
