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
          Container(
            width:175 ,
            height:250 ,
            padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xffE2E2E2)),
            
          ),
          child: Column(
            children: [
              Image.asset("assets/images/apple.png"),
              SizedBox(height: 33),
              Text("Red Apple",style: TextStyle(
                fontWeight: .w400,
                fontSize: 16,
                color: Color(0xff181725),
                )
                ,),
                 Text("1kg, Price ",style: TextStyle(
                fontWeight: .w400,
                fontSize: 14,
                color: Color(0xff7C7C7C),
                )
                ,),
                Row(
                  
                  children: [
                     Text( "\$4.99",style: TextStyle(
                fontWeight: .w400,
                fontSize: 14,
                color: Color(0xff181725),
                ),
                ),
                Spacer(),
                FloatingActionButton(onPressed: (){ },
                backgroundColor: Color(0xff53b175),
                child:
                 Icon(Icons.add,color: Colors.white,size: 30,),
                
                )
                ],)
            ],
          ),
          )
        ],)
        ],
      
    ),
    );
  }
}