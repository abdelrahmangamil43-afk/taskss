import 'package:my_apps/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:my_apps/widgets/quantity_button.dart';

class Cartcard extends StatelessWidget {
  const Cartcard({
    super.key,
    required this.image,
    required this.name,
    required this.description,
  });

  final String image;
  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image, height: 64, width: 70, fit: BoxFit.contain),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
                ),
                SizedBox(height: 18),
                Row(
                  children: [
                    QuantityButton(),
                    const Spacer(),
                    const Text(
                      "\$4.99",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff181725),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
