// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_learn/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_learn/src/constants/colors.dart';
import 'package:login_learn/src/constants/image_strings.dart';
import 'package:login_learn/src/constants/siszes.dart';
import 'package:login_learn/src/constants/text_strings.dart';
import 'package:login_learn/src/common_widget/fade_in_animation/fade_in_animation_controller.dart';

import '../../../../common_widget/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

/* 
  bool animat = false;
  @override
  void initState() {
    super.initState();
    startAnimation();
  } */

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    final size = MediaQuery.of(context).size;
    controller.animation();
    return Scaffold(
      body: Stack(
        children: [
          TFadeInAnimation(
            durationInMS: 1600,
            animate: TAnimatePosition(
                topAfter: 0, topBefore: -30, leftAfter: 0, leftBefore: -30),
            child: Image(
              image: AssetImage(tSplashTopIcon),
              height: size.height*0.1,
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(
                topAfter: 80,
                topBefore: 80,
                leftAfter: tDefaultSize,
                leftBefore: -80),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  tAppName,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                Text(
                  tAppTagLine,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(bottomBefore: 0, bottomAfter: 100),
            child: Image(
              image: AssetImage(tSplashImage),
            ),
          ),
          TFadeInAnimation(
            durationInMS: 2400,
            animate: TAnimatePosition(
                rightAfter: tDefaultSize,
                rightBefore: tDefaultSize,
                bottomBefore: 0,
                bottomAfter: 60),
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                  color: tPrimaryColor,
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
        ],
      ),
    );
  }

  /*  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animat = true;
    });
    await Future.delayed(Duration(milliseconds: 50000));
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
} */
}
