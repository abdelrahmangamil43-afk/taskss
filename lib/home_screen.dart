import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [
        Image.asset("assets/images/image1.png"),
        Row(
          spacing: 5,
          children: [
          Image.asset("assets/images/image3.png"),
          Text("Dhaka, Banassre",style: TextStyle(
            fontSize:18,
            fontWeight:.w800 ,
            color:Color(0xff4C4F4D) ,
          ),)
        ],
        )
      ,
      Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Color(0xffF2F3F2)
        ),
        child: Row(
          spacing: 10,
          children: [
            Image.asset("assets/images/image4.png"),
            Text("Search Store",style: TextStyle(
              fontSize: 14,
              fontWeight: .w600,
              color:Color(0xff7C7C7C) ,
            ),)
          ],
        ),
      )
        ,Image.asset("assets/images/image5.png"),
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
          Text("Exclusive Offer",style: TextStyle(
            fontWeight:.w600 ,
            fontSize:24 ,
            color: Color(0xff181725),
          ),
          ),
          Text("See All",style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff53B175),
          ),)
        ],
        )
        ,
        Row(
          children: [
          
        
Row(mainAxisAlignment: .spaceAround,
  children: [
ItemCard(
image:"assets/images/apple.png" ,
title: "Red Apple",
description: "1kg, Price",
price: "\$34.99",
),
ItemCard(
image:"assets/images/apple.png" ,
title: "Red Apple",
description: "1kg, Price",
price: "\$34.99",
),
          ],)
      
        ]
        ,)
        ],
      
    ),
    );
  }
}
class ItemCard extends StatelessWidget {
  ItemCard({super.key,required this.image,required this.title,required this.description,required this.price});
  String image;
  String title;
  String description;
  String price;
  
  @override
  Widget build(BuildContext context) {
    return Container(
            width:175 ,
            height:250 ,
            padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xffE2E2E2)),
            
          ),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Image.asset(image,width: 100,height: 62,fit: BoxFit.cover,alignment: .center,),
              SizedBox(height: 33),
              Text(title,style: TextStyle(
                fontWeight: .w400,
                fontSize: 16,
                color: Color(0xff181725),
                )
                ,),
                 SizedBox(height: 33),
                 Text(description,style: TextStyle(
                fontWeight: .w400,
                fontSize: 14,
                color: Color(0xff7C7C7C),
                )
                ,),
                Row(
                  
                  children: [
                     Text( price,style: TextStyle(
                fontWeight: .w400,
                fontSize: 14,
                color: Color(0xff181725),
                ),
                ),
                Spacer(),
                SizedBox(
                  width: 45,
                  height: 45,
                  child: FloatingActionButton(onPressed: (){ },
                  
                  backgroundColor: Color(0xff53b175),
                  child:
                   Icon(Icons.add,color: Colors.white,size: 24,),
                  
                  ),
                )
                ],)
            ],
          ),
          );
  }
}