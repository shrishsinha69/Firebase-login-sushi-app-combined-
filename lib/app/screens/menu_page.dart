// import 'package:google_fonts/google_fonts.dart';
// import 'package:morefirebase/app/components/button.dart';
// import 'package:morefirebase/constants/colors.dart';
// import 'package:provider/provider.dart';
// import '../components/food_tile.dart';
//
// import '../models/food.dart';
// import '../models/shop.dart';
// import 'food_details_page.dart';
// import 'package:flutter/material.dart';
// class MenuPage extends StatefulWidget {
//   const MenuPage({super.key});
//
//   @override
//   State<MenuPage> createState() => _MenuPageState();
// }
//
// class _MenuPageState extends State<MenuPage> {
//
//   void navigateToFoodDetails(int index){
//
//      final shop = context.read<Shop>();
//     final foodMenu = shop.foodMenu;
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context)=> FoodDetailsPage(
//       food: foodMenu[index],
//
//     ),
//     ),
//     );
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     final shop = context.read<Shop>();
//     final foodMenu = shop.foodMenu;
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           foregroundColor: Colors.grey[800],
//           elevation: 0,
//           leading: const Icon(
//             Icons.menu,
//             // color: Colors.grey[900],
//           ),
//           title: const Text(
//             'Tokyo',
//             // style: TextStyle(color: Colors.grey[900]),
//           ),
//           actions: [
//           IconButton(
//             onPressed: (){
//               Navigator.pushNamed(context, '/cartpage');
//             },
//             icon: const Icon(Icons.shopping_cart),
//           ),
//     ],
//
//         ),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             //promo banner
//             Container(
//                 decoration: BoxDecoration(
//                     color: primaryColor,
//                     borderRadius: BorderRadius.circular(20)),
//                 margin: const EdgeInsets.symmetric(horizontal: 25),
//                 padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                             "Get 32% Promo",
//                           style: GoogleFonts.dmSerifDisplay(
//                             fontSize: 20,
//                             color: Colors.white,
//                           ),
//                         ),
//                         const SizedBox(height: 20.0,),
//
//                         MyButton(
//                           text: "Redeem",
//                           onTap: () {},
//                         ),
//                       ],
//                     ),
//                     Image.asset('images/sushi1.png',height: 100,),
//
//                   ],
//                 ),),
//             const SizedBox(height: 25,),
//             Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide:const BorderSide(color: Colors.white),
//                   borderRadius: BorderRadius.circular(20),
//
//                 ),
//                   hintText: "Search Here.."
//               ),
//             ),),
//             const SizedBox(height: 25,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 25.0),
//               child: Text(
//                   "Food Menu",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.grey[800],
//                   fontSize: 18,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10,),
//
//             Expanded(
//               child: ListView.builder(
//                 scrollDirection:Axis.horizontal,
//                 itemCount: foodMenu.length,
//               itemBuilder: (context, index)=>FoodTile(
//                 onTap: ()=> navigateToFoodDetails(index),
//                 food: foodMenu[index],
//
//                           ),
//                           ),
//             ),
//             const SizedBox(height: 25,),
//             Container(
//               decoration: BoxDecoration(
//                 color: Colors.grey[100],
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
//               padding: const EdgeInsets.all(20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                 Row(
//                   children: [
//                   Image.asset('images/sushi1.png',
//                     height: 60,),
//                   const SizedBox(width: 20,),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "Salmon Eggs",
//                         style: GoogleFonts.dmSerifDisplay(fontSize: 18),
//                       ),
//                       const SizedBox(height: 10,),
//
//                       Text("\$21.00",
//                         style: TextStyle(color: Colors.grey[700]),
//                       )
//                     ],
//                   ),
//                 ],
//                 ),
//                const Icon(Icons.favorite_outline,
//                 color: Colors.grey,
//                 size: 28,),
//
//               ],),
//             )
//           ],
//         ));
//   }
// }
//
//
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morefirebase/app/components/button.dart';
import 'package:morefirebase/constants/colors.dart';
import 'package:provider/provider.dart';
import '../components/food_tile.dart';
import '../models/food.dart';
import '../models/shop.dart';
import 'food_details_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  void navigateToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(food: foodMenu[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        elevation: 0,
        leading: const Icon(Icons.menu),
        title: const Text('Tokyo'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Promo banner
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 32% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset('images/sushi1.png', height: 90), // Adjusted image height
              ],
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Search Here..",
              ),
            ),
          ),
          const SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Food Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTile(
                onTap: () => navigateToFoodDetails(index),
                food: foodMenu[index],
              ),
            ),
          ),
          const SizedBox(height: 25),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('images/sushi1.png', height: 60),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$21.00",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
