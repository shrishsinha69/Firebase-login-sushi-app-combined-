// import 'dart:ui';
//
// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart%20';
// import 'package:morefirebase/app/components/button.dart';
// import 'package:morefirebase/constants/colors.dart';
// import 'package:provider/provider.dart';
//
// import '../models/food.dart';
// import '../models/shop.dart';
//
// class CartPage extends StatelessWidget {
//   const CartPage({super.key});
//
//   void removeFromCart (Food food, BuildContext context){
//     final shop=context.read<Shop>();
//
// shop.removeFromCart(food);
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return  Consumer<Shop>(
//       builder:(context, value, child)=>Scaffold(
//
//         backgroundColor: primaryColor,
//
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: primaryColor,
//           title: const Text("My Cart"),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: ListView.builder(itemBuilder: (context, index){
//                 //get food from cart
//                 final Food food = value.cart[index];
//                 //get food name
//                 final String foodName =food.name;
//                 //return list tile
//                 final String foodPrice = food.price;
//                 //return list tile
//                 return Container(
//                   decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(8)),
//                   margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
//
//                   child: ListTile(
//                     title: Text(
//                         foodName,
//                     style: const TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold
//                     ),
//                     ),
//                     subtitle: Text(foodPrice,
//                       style: TextStyle(
//                           color: Colors.grey[200], fontWeight: FontWeight.bold
//                       ),),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete, color: Colors.grey[300],
//                       ),
//                       onPressed: ()=>removeFromCart(food, context),
//                     ),
//                   ),
//                 );
//               },
//               ),
//             ),
//
//             Padding(
//               padding: const EdgeInsets.all(25.0),
//               child: MyButton(text: "Pay Now", onTap: (){}),
//             )
//           ],
//         ),
//       ),
//     );
//
//   }
// }
import 'package:flutter/material.dart';
import 'package:morefirebase/app/components/button.dart';
import 'package:morefirebase/constants/colors.dart';
import 'package:provider/provider.dart';
import '../models/food.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read<Shop>();
    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          title: const Text("My Cart"),
        ),
        body: Column(
          children: [
            Expanded(
              child: value.cart.isEmpty
                  ? Center(
                child: Text(
                  "Your cart is empty",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )
                  : ListView.builder(
                itemCount: value.cart.length,
                itemBuilder: (context, index) {
                  // Get food from cart
                  final Food food = value.cart[index];
                  // Get food name
                  final String foodName = food.name;
                  // Get food price
                  final String foodPrice = food.price;
                  // Return list tile
                  return Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: const EdgeInsets.only(
                      left: 20,
                      top: 20,
                      right: 20,
                    ),
                    child: ListTile(
                      title: Text(
                        foodName,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(
                        foodPrice,
                        style: TextStyle(
                          color: Colors.grey[200],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: IconButton(
                        icon: Icon(
                          Icons.delete,
                          color: Colors.grey[300],
                        ),
                        onPressed: () => removeFromCart(food, context),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyButton(
                text: "Pay Now",
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
