import 'package:flutter/material.dart';
import 'package:my_apps/widgets/quantity_button.dart';
import 'package:my_apps/widgets/cart_card.dart';
import 'package:my_apps/widgets/button.dart';
import 'package:my_apps/widgets/explore_widget.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Find Product",
          style: TextStyle(
            fontSize: 20,
            fontWeight: .w400,
            color: Color(0xff181725),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Color(0xffF2F3F2),
            ),
            child: Row(
              spacing: 10,
              children: [
                Image.asset("assets/images/image4.png"),
                Text(
                  "Search Store",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: .w600,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
                crossAxisCount: 2,
                childAspectRatio: 175 / 190,
              ),
              itemBuilder: (context, index) => Explorecard(),
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
