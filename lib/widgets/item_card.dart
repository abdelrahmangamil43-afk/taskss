import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  ItemCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  String image;
  String title;
  String description;
  String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 175,
      height: 250,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Color(0xffE2E2E2)),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Image.asset(
            image,
            width: 100,
            height: 62,
            fit: BoxFit.cover,
            alignment: .center,
          ),
          SizedBox(height: 33),
          Text(
            title,
            style: TextStyle(
              fontWeight: .w400,
              fontSize: 16,
              color: Color(0xff181725),
            ),
          ),
          SizedBox(height: 33),
          Text(
            description,
            style: TextStyle(
              fontWeight: .w400,
              fontSize: 14,
              color: Color(0xff7C7C7C),
            ),
          ),
          Row(
            children: [
              Text(
                price,
                style: TextStyle(
                  fontWeight: .w400,
                  fontSize: 14,
                  color: Color(0xff181725),
                ),
              ),
              Spacer(),
              SizedBox(
                width: 45,
                height: 45,
                child: FloatingActionButton(
                  onPressed: () {},

                  backgroundColor: Color(0xff53b175),
                  child: Icon(Icons.add, color: Colors.white, size: 24),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
