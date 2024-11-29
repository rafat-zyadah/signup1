// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_learn/src/common_widget/fade_in_animation/fade_in_animation_model.dart';

import 'fade_in_animation_controller.dart';

class TFadeInAnimation extends StatelessWidget {
  TFadeInAnimation({
    super.key,
    required this.durationInMS,
    this.animate,
    required this.child,
  });

  final controller = Get.put(FadeInAnimationController());

  final int durationInMS;

  final TAnimatePosition? animate;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
          top: controller.animat.value ? animate!.topAfter : animate!.topBefore,
          left: controller.animat.value
              ? animate!.leftAfter
              : animate!.leftBefore,
          bottom: controller.animat.value
              ? animate!.bottomAfter
              : animate!.bottomBefore,
          right: controller.animat.value
              ? animate!.rightAfter
              : animate!.rightBefore,
          duration: Duration(milliseconds: durationInMS),
          child: AnimatedOpacity(
            opacity: controller.animat.value ? 1 : 0,
            duration: Duration(milliseconds: durationInMS),
            child: child,
          )
          //child: Image(image: AssetImage(tSplashTopIcon))),
          ),
    );
  }
}
