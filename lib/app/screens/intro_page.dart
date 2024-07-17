// import 'package:flutter/material.dart%20';
// import 'package:google_fonts/google_fonts.dart';
//
// import '../../constants/colors.dart';
// import '../components/button.dart';
//
// class IntroPage extends StatelessWidget {
//   const IntroPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       backgroundColor: primaryColor,
//       body: Padding(padding: const EdgeInsets.all(25.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           const SizedBox(height: 25.0),
//           //shop name
//           Text("SUSHI MAN",
//             style: GoogleFonts.dmSerifDisplay(
//             fontSize: 28,
//             color: Colors.white,
//           ),),
//           const SizedBox(width: 25,),
//           //icon
//           Padding(padding: const EdgeInsets.all(50.0),
//             child: Image.asset('images/sushi.png')
//
//           ),
//           const SizedBox(height: 25),
//           //title
//           Text("THE TASTE OF JAPANESE FOOD",
//           style: GoogleFonts.dmSerifDisplay(
//             fontSize: 44,
//             color: Colors.white,
//           ),),
//            const SizedBox(height: 10,),
//           //subtitle
//           Text("Feel the taste of the most popular japanese food from anywhere and anytime",
//           style: TextStyle(
//             color: Colors.grey[300],
//             height: 2,
//           ),),
//           const SizedBox(height: 25,),
//           //get started button
//           MyButton(text: "Get Started",
//           onTap: (){
//             Navigator.pushNamed(context, '/menupage');
//             },
//       ),
//         ],
//       ),),
//
//     );
//   }
// }
//
//
//
//
// //------------------------------
//
//
//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25.0),
            // shop name
            Text(
              "SUSHI MAN",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 24),
            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8, // 80% of screen width
                child: Image.asset(
                  'images/sushi.png',

                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 25),
            // title
            Text(
              "THE TASTE OF JAPANESE FOOD",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // subtitle
            Text(
              "Feel the taste of the most popular Japanese food from anywhere and anytime",
              style: TextStyle(
                color: Colors.grey[300],
                height: 2,
              ),
            ),
            const SizedBox(height: 25),
            // get started button
            MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
