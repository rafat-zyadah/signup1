// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_learn/src/features/authentication/controllers/on_boarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../constants/colors.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController();
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            onPageChangeCallback: controller.onPageChangeCallback,
            liquidController: controller.controller,
            pages: controller.pages,
            slideIconWidget: Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () => controller.animateToNextSlide(),
              style: ElevatedButton.styleFrom(
                  side: BorderSide(color: Colors.black26),
                  shape: CircleBorder(),
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration:
                    BoxDecoration(color: tDarkColor, shape: BoxShape.circle),
                child: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed: () => controller.skip(),
              child: Text(
                'Skip',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Obx(
            () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                  effect: WormEffect(
                    dotHeight: 5,
                    activeDotColor: Color(0xff272727),
                  ),
                  activeIndex: controller.currentPage.value,
                  count: 3),
            ),
          ),
        ],
      ),
    );
  }
}
