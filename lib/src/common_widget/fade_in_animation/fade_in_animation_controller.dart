// ignore_for_file: prefer_const_constructors, unused_import

import 'package:get/get.dart';
import 'package:login_learn/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:login_learn/src/features/authentication/screens/welcome/welcome_screen.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animat = false.obs;
  Future animation() async {
    await Future.delayed(const Duration(milliseconds: 500));

    animat.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));
    animat.value = false;

    await Future.delayed(const Duration(milliseconds: 2500));
    Get.offAll( ()=> WelcomeScreen());
  }


  
  Future animationOut() async {
    await Future.delayed(const Duration(milliseconds: 500));

    animat.value = true;
    
  }

}
