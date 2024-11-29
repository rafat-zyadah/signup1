import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_learn/src/constants/text_strings.dart';

import '../../../constants/colors.dart';
import '../../../constants/image_strings.dart';
import '../models/model_on_boarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPage(
      model: OnBoardingModel(
        tOnBoardingImage1,
        tOnBoardingTitle1,
        tOnBoardingSubTitle1,
        tOnBoardingCounter1,
        tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        tOnBoardingImage1,
        tOnBoardingTitle2,
        tOnBoardingSubTitle2,
        tOnBoardingCounter2,
        tOnBoardingPage2Color,
      ),
    ),
    OnBoardingPage(
      model: OnBoardingModel(
        tOnBoardingImage1,
        tOnBoardingTitle3,
        tOnBoardingSubTitle3,
        tOnBoardingCounter3,
        tOnBoardingPage3Color,
      ),
    )
  ];

  void skip() => controller.jumpToPage(page: 2);

  animateToNextSlide() {
    RxInt nextPage = controller.currentPage.obs + 1;
    controller.animateToPage(page: nextPage.value);
  }

  onPageChangeCallback(int activePageIndex) {
    currentPage.value = activePageIndex;
  }
}
