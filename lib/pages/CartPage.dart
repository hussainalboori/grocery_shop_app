import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/CartModel.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
      ),
      body: Consumer<cartModel>(
        builder: (context, value, child) {
          return Column(
        children: [
         Expanded(
          child: ListView.builder(
            itemCount: value.cartItems.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: Image.asset(
                      value.cartItems[index][2],
                      height: 36,
                    ),
                    title: Text(value.cartItems[index][0]),
                    subtitle: Text("\$" + value.cartItems[index][1]),
                    trailing: IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () => Provider.of<cartModel>(context, listen: false).removeItemFromCart(index),
                    ),
                  ),
                ),
              );
            },
          ),
         ),
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Total Price:",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[100],
                        ),
                        ),
                      Text(
                        "\$" + value.calculateTotal(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green.shade100,
                      ),       
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                   child: Row(
                      children: [
                      Text("Pay Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                        color: Colors.white,
                      ),
                    ],
                   )
                  )
                ],
              ),
            ),
          ),
        ],
      );
        },
      ),
    );
  }
}