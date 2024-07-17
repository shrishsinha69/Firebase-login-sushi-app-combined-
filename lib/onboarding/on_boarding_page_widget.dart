import 'package:flutter/material.dart';

import '../constants/text_strings.dart';
import 'model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(30.0),
      color: model.bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,
          ),
          Column(
            children: [
              Text(
                model.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24, // Adjust the font size as needed
                ),
              ),
              const SizedBox(height: 10.0), // Space between title and subtitle
              Text(
                model.subTitle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Text(tOnBoardingCounter1),
          const SizedBox(height: 80.0),
        ],
      ),
    );
  }
}