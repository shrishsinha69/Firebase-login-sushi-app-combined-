// import 'package:flutter/cupertino.dart';

import 'food.dart';
import 'package:flutter/material.dart';


class Shop extends ChangeNotifier{
final List <Food> _foodMenu = [
  Food(
    name: "Salmon Sushi",
    price: '21.00',
    imagePath:'images/sushi2.png',
    rating: '4.9',
  ),
  Food(
    name: "Tuna",
    price: '23.00',
    imagePath:'images/sushi3.png',
    rating: '4.8',
  ),
  Food(
    name: "shark",
    price: '21.00',
    imagePath:'images/sushi1.png',
    rating: '4.9',
  ),
  Food(
    name: "dolphin",
    price: '21.00',
    imagePath:'images/sushi.png',
    rating: '4.9',
  ),
];
List<Food> _cart = [];

//getter methods
List<Food> get foodMenu => _foodMenu;
List<Food> get cart => _cart;

//add to cart
void addToCart(Food foodItem, int quantity){
  for(int i=0;i<quantity;i++){
    _cart.add(foodItem);
  }
  notifyListeners();
}

//remove from cart
void removeFromCart(Food food ){
  _cart.remove(food);
  notifyListeners();
}

}