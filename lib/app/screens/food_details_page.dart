import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:morefirebase/app/components/button.dart';
import 'package:morefirebase/constants/colors.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import '../models/shop.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;

  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  //quantity
  int quantityCount = 0;

  //decrement quantity
  void decrementQuantity(){
    setState(() {
      if(quantityCount>0){
        quantityCount--;
      }

    });
  }

  //increment quantity
  void incrementQuantity(){
    setState(() {
      quantityCount++;
    });
  }
  // add to cart
  void addToCart(){
    if(quantityCount>0){
      final shop = context.read<Shop>();
      shop.addToCart(
          widget.food, quantityCount);
      showDialog(
        context: context,
        barrierDismissible: false,

        builder: (context)=>AlertDialog(
          backgroundColor: primaryColor,
        content: const Text("Successfully added to cart",
        textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(onPressed: (){
            //pop once to remove dialog box
            Navigator.pop(context);
            //pop again to go previous screen,
            Navigator.pop(context);
          },
            icon: const Icon(
                Icons.done,
            color: Colors.white,
            ),
          ),
        ],
      ),
      );
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: ListView(
              children: [
                //image
                Image.asset(
                  widget.food.imagePath,
                  height: 200,
                ),
                const SizedBox(
                  height: 25,
                ),
                //rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.food.rating,
                      style: TextStyle(
                          color: Colors.grey[600], fontWeight: FontWeight.bold),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.food.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 20),
                ),
                const SizedBox(
                  height: 25,
                ),
                //description
                Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                    "delicately sliced, fresh Atlantic salmon drapes "
                        "elegantly over a pillow of perfectly seasoned sushi "
                        "rice. Its vibrant hur and buttery texture promise an"
                        " exquisite melt-in-your-mouth experience. Paired "
                        "with a wishper of wasabi and a side of traditional "
                        "pickled ginger, our salmon sushi is an ode to the "
                        "purity and simplicity of authentic japanese flavours."
                        " Indulge iin the ocean's bounty with each savory bite.",
                style: TextStyle(color: Colors.grey[600],fontSize: 14, height: 2,
                ),
                ),

              ],
            ),
          ),
          ),
          Container(
            color: primaryColor,
              padding: const EdgeInsets.all(25),
              child: Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text ("\$${widget.food.price}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                       ),
                      //quantity
                      Row(
                        children: [
                          //minus button
                          Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,),
                              onPressed: decrementQuantity,
                            ),
                          ),
                          SizedBox(
                            width: 40,
                            child: Center(
                              child: Text(
                                quantityCount.toString(),
                              style:
                              const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.add,
                                color: Colors.white,),
                              onPressed: incrementQuantity,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 25,),


                      MyButton(text: "Add to Cart", onTap: addToCart),

                ],
              ),
          )
        ],
      ),
    );
  }
}
