import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nivas/screens/Relogin.dart';

import 'Login.dart'; // Make sure you have this screen created

// --- Controller to manage slider state ---
class SliderController extends GetxController {
  var currentPage = 0.0.obs;
  late final PageController pageController;

  final List<Map<String, String>> sliderData = [
    {
      "image": "assets/images/Slider3.png",
      "image1": "assets/images/Group 1477.png",
      "text": "DISCOVER PREMIUM REAL ESTATE AT PRICES YOU CAN AFFORD."
    },
    {
      "image": "assets/images/Rectangle 864 (1).png",
      "image1": "assets/images/Group 1479.png",
      "text": "EXPLORE THE BEST REAL ESTATE DEALS WITHIN YOUR BUDGET."
    },
    {
      "image": "assets/images/Rectangle 863 (1).png",
      "image1": "assets/images/Group 1478.png",
      "text": "THOUSANDS OF PROPERTIES, ENDLESS POSSIBILITIES, AFFORDABLE FOR YOU."
    }
  ];

  int get totalPages => sliderData.length;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController();
    // Listen to page changes to update the currentPage observable
    pageController.addListener(() {
      currentPage.value = pageController.page ?? 0.0;
    });
  }

  // Method to navigate to the login screen
  void skipToLogin() {
    Get.offAll(() => const Relogin_screen());
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}

// --- UI for the Slider Screen ---
class Slider_screen extends StatelessWidget {
  const Slider_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final SliderController controller = Get.put(SliderController());

    return Scaffold(
      backgroundColor: const Color(0xFF181A20),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // 1. PageView for the slider screens
            PageView.builder(
              controller: controller.pageController,
              itemCount: controller.totalPages,
              itemBuilder: (context, index) {
                return SliderPage(
                  image: controller.sliderData[index]["image"]!,
                  image1: controller.sliderData[index]["image1"]!,
                  text: controller.sliderData[index]["text"]!,
                );
              },
            ),

            // 2. Static UI Elements (Skip button, Dots, etc.)
            Positioned(
              top: 10,
              right: 20,
              child: TextButton(
                onPressed: controller.skipToLogin,
                child: const Text("Skip", style: TextStyle(color: Colors.white, fontSize: 16)),
              ),
            ),

            _buildStaticBottomContent(context),
          ],
        ),
      ),
    );
  }

  // Widget for the static bottom elements (Dots Indicator)
  Widget _buildStaticBottomContent(BuildContext context) {
    final SliderController controller = Get.find();
    return Positioned(
      bottom: 60.0, // Adjust position from bottom
      child: Obx(
        () => DotsIndicator(
          dotsCount: controller.totalPages,
          position: controller.currentPage.value.round(),
          decorator: DotsDecorator(
            activeColor: const Color(0xFF00C3FF),
            color: Colors.grey.withOpacity(0.5),
            size: const Size.square(10.0),
            activeSize: const Size(24.0, 10.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ),
    );
  }
}

// --- Reusable Widget for a single slider page's content ---
class SliderPage extends StatelessWidget {
  final String image;
  final String image1;
  final String text;

  const SliderPage({
    super.key,
    required this.image,
    required this.image1,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // A semi-transparent overlay to make text more readable
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.8),
                ],
                stops: const [0.0, 0.5, 1.0],
              ),
            ),
          ),
          // This Column now just centers the text vertically
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 200,),
               Image.asset(
                 image1,
                  width: 303.63,
                  height: 338.12,
                ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alata',
                    color: Colors.white,
                    shadows: [
                      Shadow(blurRadius: 10.0, color: Colors.black54),
                    ],
                  ),
                ),
              ),
              const Spacer(flex: 1), // Provides space below the text
            ],
          ),
        ],
      ),
    );
  }
}
