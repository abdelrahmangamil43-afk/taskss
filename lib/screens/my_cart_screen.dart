import 'package:flutter/material.dart';
import 'package:my_apps/widgets/quantity_button.dart';
import 'package:my_apps/widgets/cart_card.dart';
import 'package:my_apps/widgets/button.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("My Cart"))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(color: Color(0xffE2E2E2), height: 20),

            Cartcard(
              name: "Bell Pepper Red",
              description: "1kg, Price",
              image: "assets/images/bell.png",
            ),
            Divider(color: Color(0xffE2E2E2), height: 20),
            Cartcard(
              name: "Egg Chicken Red",
              description: "4pcs, Price",
              image: "assets/images/egg.png",
            ),
            Divider(color: Color(0xffE2E2E2), height: 20),
            Cartcard(
              name: "Organic Bananas",
              description: "12kg, Price",
              image: "assets/images/bananas.png",
            ),
            Divider(color: Color(0xffE2E2E2), height: 20),
            Cartcard(
              name: "Ginger",
              description: "250gm, Price",
              image: "assets/images/Ginger.png",
            ),
            Button(text: "Go to Checkout"),
          ],
        ),
      ),
    );
  }
}
