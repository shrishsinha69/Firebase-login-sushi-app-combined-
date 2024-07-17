// import 'package:flutter/material.dart';
// import 'package:morefirebase/Login%20Signup/Screen/login.dart';
// import 'package:morefirebase/Login%20Signup/Services/authentication.dart';
// import 'package:morefirebase/Widget/button.dart';
// import 'package:morefirebase/app/screens/intro_page.dart';
// import '../../app/screens/cart_page.dart';
// import '../../app/screens/menu_page.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             const Text(
//               "Congratulations\n You have Successfully Logged In",
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 25,
//               ),
//             ),
//             MyButtons(
//               onTab: () {
//                 Navigator.of(context).pushReplacementNamed('/intropage');
//               },
//               text: "Go to Sushi App",
//             ),
//             MyButtons(
//               onTab: () async {
//                 await AuthServices().signOut();
//                 Navigator.of(context).pushReplacement(
//                   MaterialPageRoute(
//                     builder: (context) => const LoginScreen(),
//                   ),
//                 );
//               },
//               text: "Logout",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:morefirebase/Login%20Signup/Screen/login.dart';
import 'package:morefirebase/Login%20Signup/Services/authentication.dart';
// import 'package:morefirebase/Widget/custom_button.dart'; // Import your new CustomButton widget
import 'package:morefirebase/app/screens/intro_page.dart';

import '../../Widget/custombuttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Light background color for a modern look
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcome message
            const Text(
              "Congratulations!\nYou have Successfully Logged In",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20), // Spacing between text and images

            // Decorative image
            Image.asset(
              'images/congratulations.png', // Add an image to represent success
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20), // Spacing between image and buttons

            // Go to Sushi App button
            CustomButton(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/intropage');
              },
              text: "Explore Sushi App",
              buttonColor: Colors.orangeAccent, // Custom color for the button
              textColor: Colors.white,
              elevation: 5.0, // Button shadow effect
            ),
            const SizedBox(height: 10), // Spacing between buttons

            // Logout button
            CustomButton(
              onTap: () async {
                await AuthServices().signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              text: "Logout",
              buttonColor: Colors.redAccent, // Custom color for the button
              textColor: Colors.white,
              elevation: 5.0, // Button shadow effect
            ),
            const SizedBox(height: 30), // Extra spacing at the bottom

            // Additional text or information
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Thank you for using our app. We hope you enjoy your experience. If you have any questions or need assistance, feel free to contact our support team.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
