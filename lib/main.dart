// //
// // import 'package:firebase_auth/firebase_auth.dart';
// // import 'package:firebase_core/firebase_core.dart';
// // import 'package:flutter/material.dart';
// // import 'package:get/get.dart';
// // import 'package:morefirebase/Login%20Signup/Screen/home_screen.dart';
// // import 'package:morefirebase/Login%20Signup/Screen/login.dart';
// // import 'package:morefirebase/onboarding/on_boarding_screen.dart';
// //
// // import 'app/screens/intro_page.dart';
// // import 'app/screens/menu_page.dart';
// // import 'app/screens/nav_bar_screen.dart';
// //
// // void main() async {
// //   WidgetsFlutterBinding.ensureInitialized();
// //   await Firebase.initializeApp(
// //     options: const FirebaseOptions(
// //       apiKey: "AIzaSyD3LDb-PwX3hwRplw03R-amFXruxvjwkv8",
// //       appId: "1:1062148041883:android:43c11f13e675ab34056a3e",
// //       messagingSenderId: "1062148041883",
// //       projectId: "more-firebase-dcf6c",
// //     ),
// //   );
// //
// //   runApp(const MyApp());
// // }
// //
// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return GetMaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: OnBoardingScreen(),
// //     );
// //   }
// // }
//
// import 'package:flutter/material.dart';
// import 'package:morefirebase/app/screens/cart_page.dart';
// import 'package:provider/provider.dart';
//
// import 'app/models/shop.dart';
// import 'app/screens/intro_page.dart'; // Make sure this path is correct
// import 'app/screens/menu_page.dart';  // Make sure this path is correct
//
//
// void main() {
//   runApp(
//     ChangeNotifierProvider(create: (context)=>Shop(),
//     child: const MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const IntroPage(),
//       routes: {
//         '/intropage': (context) => const IntroPage(),
//         '/menupage': (context) => const MenuPage(),
//         '/cartpage': (context)=> const CartPage(),
//       },
//     );
//   }
// }
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morefirebase/Login%20Signup/Screen/home_screen.dart';
import 'package:morefirebase/Login%20Signup/Screen/login.dart';
// import 'package:morefirebase/Login%20Signup/Screen/signup.dart';
import 'package:morefirebase/onboarding/on_boarding_screen.dart';
import 'package:provider/provider.dart';
import 'Login Signup/Screen/sign_up.dart';
import 'app/models/shop.dart';
import 'app/screens/intro_page.dart';
import 'app/screens/menu_page.dart';
import 'app/screens/cart_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD3LDb-PwX3hwRplw03R-amFXruxvjwkv8",
      appId: "1:1062148041883:android:43c11f13e675ab34056a3e",
      messagingSenderId: "1062148041883",
      projectId: "more-firebase-dcf6c",
    ),
  );

  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
      routes: {
        '/onboarding': (context) => OnBoardingScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/homescreen': (context) => const HomeScreen(),
        '/intropage': (context) => const IntroPage(),
        '/menupage': (context) => const MenuPage(),
        '/cartpage': (context) => const CartPage(),
      },
    );
  }
}
