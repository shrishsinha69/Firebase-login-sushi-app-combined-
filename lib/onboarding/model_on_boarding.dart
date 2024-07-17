import 'dart:ui';

class OnBoardingModel {
  OnBoardingModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.counterText,
    required this.bgColor,
    // required this.totalPages, // Add totalPages to the model
  });

  final String image;
  final String title;
  final String subTitle;
  final String counterText;
  final Color bgColor;
  // final int totalPages; // Add totalPages to the model
}
