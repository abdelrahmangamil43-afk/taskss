import 'package:flutter/material.dart';
import 'package:my_apps/widgets/button.dart';
import 'package:my_apps/widgets/quantity_button.dart';

class AppleScreen extends StatelessWidget {
  const AppleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Container(
              height: 371,
              width: 414,
              decoration: BoxDecoration(
                color: Color(0xffF2F3F2),
                borderRadius: BorderRadius.circular(25),
              ),

              child: Image.asset(
                "assets/images/bigapple.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Naturel Red Apple",
                  style: TextStyle(fontSize: 24, fontWeight: .w800),
                ),
                Icon(Icons.favorite),
              ],
            ),
            SizedBox(height: 11),
            Row(
              children: [
                Text(
                  "1kg, Price",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: .w600,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
            SizedBox(height: 37),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                QuantityButton(),
                Text(
                  "\$4.99",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: .w400,
                    color: Color(0xff181725),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Divider(color: Color(0xffE2E2E2B2)),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  "Product Detail",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: .w600,
                    color: Color(0xff181725),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              "Apples Are Nutritious. Apples May Be Good For Weight Loss.\n"
              "Apples May Be Good For Your Heart. As Part Of A Healthful\n"
              "And Varied Diet.",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff7C7C7C),
                height: 1.5,
              ),
            ),
            SizedBox(height: 20),
            Button(text: "Add To Basket"),
          ],
        ),
      ),
    );
  }
}
