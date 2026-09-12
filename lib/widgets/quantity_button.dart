import 'package:flutter/material.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({super.key});

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            setState(() {
              quantity--;
            });
          },
          icon: const Icon(Icons.remove),
        ),

        Container(
          alignment: .center,
          height: 46,
          width: 46,
          child: Text(quantity.toString()),
          decoration: BoxDecoration(
            color: Color(0xffE2E2E2),
            borderRadius: BorderRadius.circular(17),
          ),
        ),

        IconButton(
          color: Color(0xff53B175),
          onPressed: () {
            setState(() {
              quantity++;
            });
          },
          icon: const Icon(Icons.add),
        ),
      ],
    );
  }
}
