import 'package:flutter/material.dart';
import 'package:my_apps/widgets/text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 35),

                Center(
                  child: Image.asset(
                    "assets/icons/image1.png",
                    width: 56,
                    height: 48,
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(height: 80),

                Text(
                  "Loging",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),

                SizedBox(height: 15),

                // Subtitle
                Text(
                  "Enter your email and password",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C),
                  ),
                ),

                SizedBox(height: 55),
                TextFieldForm(
                  label: Text("Email"),
                  keyboardType: TextInputType.emailAddress,
                ),

                SizedBox(height: 30),
                TextFieldForm(
                  label: Text("Password"),
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.blue),
                  obscureText: true,
                ),

                SizedBox(height: 15),

                // Forgot Password
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: .w400,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30),

                SizedBox(
                  width: 364,
                  height: 67,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53B175),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: .w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff7C7C7C),
                      ),
                    ),

                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff53B175),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
