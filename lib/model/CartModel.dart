import 'package:flutter/material.dart';


class cartModel extends ChangeNotifier {
 final List _shopItems = [
  ["Avocado", "2.00", "assets/avacado.png", Colors.green],
  ["Banana", "1.00", "assets/banana.png", Colors.yellow],
  ["Chicken", "10.00", "assets/chicken.png", Colors.red],
  ["Water", "2.00", "assets/wattar.png", Colors.blue],
 ];
 get shopItems => _shopItems;

 final List _cartItems = [];
 get cartItems => _cartItems;

 void addItemToCart(int index) {
  _cartItems.add(_shopItems[index]);
  notifyListeners();
 }

 void removeItemFromCart(int index) {
  _cartItems.removeAt(index);
  notifyListeners();
 }

 String calculateTotal() {
  double total = 0;
  for (int i = 0; i < _cartItems.length; i++) {
    total += double.parse(_cartItems[i][1]);
  }
  return total.toStringAsFixed(2);
  } 
}