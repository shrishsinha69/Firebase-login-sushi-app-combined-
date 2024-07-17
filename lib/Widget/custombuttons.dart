import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double elevation;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.elevation = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor, // Background color
        foregroundColor: textColor, // Text color
        elevation: elevation, // Shadow effect
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
