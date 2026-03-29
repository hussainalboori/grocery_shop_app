import 'package:flutter/material.dart';

class cartModel extends ChangeNotifier {
 final List _shopItems = [
  ["Avocado", "2.00", "assets/avacado.png", Colors.green],
  ["Banana", "1.00", "assets/banana.png", Colors.yellow],
  ["Chicken", "10.00", "assets/chicken.png", Colors.red],
  ["Water", "2.00", "assets/wattar.png", Colors.blue],
 ];
 get shopItems => _shopItems;
}
