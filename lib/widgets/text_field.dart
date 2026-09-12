import 'package:flutter/material.dart';

class TextFieldForm extends StatelessWidget {
  const TextFieldForm({
    super.key,
    required this.label,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIcon,
  });
  final Widget label;
  final Widget? suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: label,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        labelStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
