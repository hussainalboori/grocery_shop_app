import 'package:flutter/material.dart';
import 'package:grocery_shop_app/pages/HomePage.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              top: 160,
              bottom: 40,
            ),
            child: Image.asset('assets/avacado.png'),
          ),
          Text(
            "we delivrer food at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
              ),
          ),
          Text(
            "Fresh food for a healthy life",
            ),
            Spacer(),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return HomePage();
                  },
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: EdgeInsets.all(24),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
        ],
      ),
    );
  }
}
