// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_learn/main.dart';
import 'package:login_learn/src/common_widget/fade_in_animation/animation_design.dart';
import 'package:login_learn/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_learn/src/constants/colors.dart';
import 'package:login_learn/src/constants/image_strings.dart';
import 'package:login_learn/src/constants/siszes.dart';
import 'package:login_learn/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_learn/src/features/authentication/screens/signup/signup_screen.dart';
import '../../../../common_widget/fade_in_animation/fade_in_animation_controller.dart';
import '../../../../constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.animationOut();

    final mediaQuery = MediaQuery.of(context);
    final brightness = mediaQuery.platformBrightness;
    final height = mediaQuery.size.height;
    final isDarkMode = brightness == Brightness.dark;
    final bool x = MyApp.themeMode == ThemeMode.dark;
    return Scaffold(
      backgroundColor: isDarkMode || x ? tSecondaryColor : tPrimaryColor,
      body: Stack(children: [
        TFadeInAnimation(
          durationInMS: 1200,
          animate: TAnimatePosition(
              bottomAfter: 0,
              bottomBefore: -100,
              topAfter: 0,
              topBefore: 0,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0),
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: AssetImage(tWelcomeScreenImage),
                    height: height * 0.6),
                Column(
                  children: [
                    Text(tWelcomeTitle,
                        style: Theme.of(context).textTheme.displayMedium),
                    Text(
                      tWelcomeSubTitle,
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                          onPressed: () => Get.to(() => LoginScreen()),
                          child: Text(tLogin.toUpperCase())),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () => Get.to(() => SignupScreen()),
                          child: Text(tSignup.toUpperCase())),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
