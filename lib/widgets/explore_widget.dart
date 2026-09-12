import 'package:flutter/material.dart';

class Explorecard extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff53B175)),
        color: Color(0xffEEF7F1),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.all(30),
      child: Column(
        spacing: 28,
        children: [
          Image.asset("assets/images/imagee1.png"),
          Text(
            "Frash Fruits& Vegetable",
            style: TextStyle(
              fontSize: 16,
              fontWeight: .w400,
              color: Color(0xff181725),
            ),
            textAlign: .center,
          ),
        ],
      ),
    );
  }
}
