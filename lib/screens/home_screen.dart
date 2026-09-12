import 'package:flutter/material.dart';

import 'apple_screen.dart';
import '../widgets/item_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/icons/image1.png"),
                Row(
                  mainAxisAlignment: .center,
                  spacing: 5,
                  children: [
                    Image.asset("assets/images/image3.png"),
                    Text(
                      "Dhaka, Banassre",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: .w800,
                        color: Color(0xff4C4F4D),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                Image.asset("assets/images/image5.png"),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        "Exclusive Offer",
                        style: TextStyle(
                          fontWeight: .w600,
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    ItemCard(
                      image: "assets/images/banana.png",
                      title: "Organic Bananas",
                      description: "7pcs, Price",
                      price: "\$4.99",
                    ),
                    ItemCard(
                      image: "assets/images/apple.png",
                      title: "Red Apple",
                      description: "1kg, Price",
                      price: "\$4.99",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AppleScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,

                    children: [
                      Text(
                        "Best Selling",
                        style: TextStyle(
                          fontWeight: .w600,
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    ItemCard(
                      image: "assets/images/pabber.png",
                      title: "Bell Pepper Red",
                      description: "1kg, Price",
                      price: "\$4.99",
                    ),
                    ItemCard(
                      image: "assets/images/Ginger.png",
                      title: "Ginger",
                      description: "250gm, Priceg",
                      price: "\$4.99",
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: .spaceBetween,

                    children: [
                      Text(
                        "Groceries",
                        style: TextStyle(
                          fontWeight: .w600,
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "See All",
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xffF8A44C),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        height: 105,
                        width: 249,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            spacing: 15,
                            children: [
                              Image.asset("assets/images/image10.png"),
                              Text(
                                "Pulses",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: .w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xff53B175),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        height: 105,
                        width: 249,
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Row(
                            spacing: 15,
                            children: [
                              Image.asset("assets/images/image11.png"),
                              Text(
                                "Rice",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: .w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    ItemCard(
                      image: "assets/images/meat.png",
                      title: "Beef Bone",
                      description: "1kg, Price",
                      price: "\$4.99",
                    ),
                    ItemCard(
                      image: "assets/images/chicken.png",
                      title: "Broiler Chicken",
                      description: "250gm, Priceg",
                      price: "\$4.99",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
