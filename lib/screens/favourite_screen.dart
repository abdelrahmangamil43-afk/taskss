import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),

            Text(
              'Favourite',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20),

            Divider(thickness: 1, height: 1),

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 22),
                children: [
                  favouriteItem(
                    title: 'Sprite Can',
                    subtitle: '325ml, Price',
                    price: '\$1.50',
                  ),

                  favouriteItem(
                    title: 'Diet Coke',
                    subtitle: '355ml, Price',
                    price: '\$1.99',
                  ),

                  favouriteItem(
                    title: 'Apple & Grape Juice',
                    subtitle: '2L, Price',
                    price: '\$15.50',
                  ),

                  favouriteItem(
                    title: 'Coca Cola Can',
                    subtitle: '325ml, Price',
                    price: '\$4.99',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget favouriteItem({
    required String title,
    required String subtitle,
    required String price,
  }) {
    return Container(
      height: 144,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Color(0xffdddddd), width: 1)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Image.asset(
              'assets/images/sprite.png',
              height: 65,
              fit: BoxFit.contain,
            ),
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 5),

                Text(
                  subtitle,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),

          Text(
            price,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          SizedBox(width: 15),

          Icon(Icons.arrow_forward_ios, size: 20),
        ],
      ),
    );
  }
}
