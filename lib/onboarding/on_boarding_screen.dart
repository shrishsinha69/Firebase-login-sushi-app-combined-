import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:morefirebase/constants/Image_strings.dart';
import 'package:morefirebase/constants/colors.dart';
import 'package:morefirebase/constants/text_strings.dart';
import 'package:morefirebase/onboarding/model_on_boarding.dart';
import 'package:morefirebase/onboarding/on_boarding_controller.dart';
import 'package:morefirebase/onboarding/on_boarding_page_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Login Signup/Screen/login.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: obcontroller.pages,
            liquidController: obcontroller.controller,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            onPageChangeCallback: obcontroller.onPageChangedCallBack,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: obcontroller.animateToNextSlide, // Add parentheses to call the function
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                backgroundColor: Colors.white,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child: TextButton(
              onPressed: () => obcontroller.skip(),
              child: const Text(
                "skip",
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
          Obx(
                () => Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                count: 3,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  dotHeight: 5.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:liquid_swipe/liquid_swipe.dart';
// import 'package:morefirebase/constants/Image_strings.dart';
// import 'package:morefirebase/constants/colors.dart';
// import 'package:morefirebase/constants/text_strings.dart';
// import 'package:morefirebase/onboarding/model_on_boarding.dart';
// import 'package:morefirebase/onboarding/on_boarding_controller.dart';
// import 'package:morefirebase/onboarding/on_boarding_page_widget.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import '../Login Signup/Screen/login.dart';
//
// class OnBoardingScreen extends StatelessWidget {
//   OnBoardingScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final obcontroller = OnBoardingController();
//
//     return Scaffold(
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Obx(
//                 () => LiquidSwipe(
//               pages: obcontroller.pages.map((page) {
//                 return OnBoardingPageWidget(
//                   model: page.model,
//                   pageIndex: obcontroller.currentPage.value, // Update pageIndex
//                 );
//               }).toList(),
//               liquidController: obcontroller.controller,
//               slideIconWidget: const Icon(Icons.arrow_back_ios),
//               enableSideReveal: true,
//               onPageChangeCallback: obcontroller.onPageChangedCallBack,
//             ),
//           ),
//           Positioned(
//             bottom: 60.0,
//             child: OutlinedButton(
//               onPressed: obcontroller.animateToNextSlide,
//               style: ElevatedButton.styleFrom(
//                 side: const BorderSide(color: Colors.black26),
//                 backgroundColor: Colors.white,
//                 shape: const CircleBorder(),
//                 padding: const EdgeInsets.all(20),
//               ),
//               child: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: const BoxDecoration(
//                     color: tDarkColor, shape: BoxShape.circle),
//                 child: const Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//           ),
//           Positioned(
//             top: 20,
//             right: 20,
//             child: TextButton(
//               onPressed: () => obcontroller.skip(),
//               child: const Text(
//                 "skip",
//                 style: TextStyle(color: Colors.grey),
//               ),
//             ),
//           ),
//           Obx(
//                 () => Positioned(
//               bottom: 10,
//               child: AnimatedSmoothIndicator(
//                 activeIndex: obcontroller.currentPage.value,
//                 count: 3,
//                 effect: const WormEffect(
//                   activeDotColor: Color(0xff272727),
//                   dotHeight: 5.0,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
