
import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:flutter/material.dart';
import '../constants/Image_strings.dart';
import '../constants/colors.dart';
import '../constants/text_strings.dart';
import 'model_on_boarding.dart';
import 'on_boarding_page_widget.dart';
import '../Login Signup/Screen/login.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPage = 0.obs;

  final pages = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSubTitle1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBoardingPage1Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSubTitle2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
      ),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
        image: tOnBoardingImage3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSubTitle3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,
      ),
    ),
  ];

  void navigateToLogin() {
    Get.offAll(() => const LoginScreen(), transition: Transition.fadeIn, duration: Duration(seconds: 1));
  }

  void skip() {
    navigateToLogin();
  }

  void animateToNextSlide() {
    int nextPage = controller.currentPage + 1;
    if (nextPage >= pages.length) {
      navigateToLogin();
    } else {
      controller.animateToPage(page: nextPage);
    }
  }

  void onPageChangedCallBack(int activePageIndex) {
    currentPage.value = activePageIndex;
    if (activePageIndex == pages.length - 1) {
      Future.delayed(Duration(milliseconds: 500 ), () {
        navigateToLogin();
      });
    }
  }
}
