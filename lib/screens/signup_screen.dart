import 'package:flutter/material.dart';
import 'package:my_apps/widgets/text_field.dart';
import 'package:my_apps/widgets/button.dart';
import 'package:my_apps/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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

                SizedBox(height: 100),

                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff030303),
                  ),
                ),

                SizedBox(height: 15),

                Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff7C7C7C),
                  ),
                ),

                SizedBox(height: 40),
                TextFieldForm(
                  label: Text("Username"),
                  keyboardType: TextInputType.name,
                ),

                SizedBox(height: 30),
                TextFieldForm(
                  label: Text("Email"),
                  keyboardType: TextInputType.emailAddress,
                  suffixIcon: Icon(Icons.check, color: Colors.blue),
                  obscureText: true,
                ),
                SizedBox(height: 30),
                TextFieldForm(
                  label: Text("Password"),
                  keyboardType: TextInputType.visiblePassword,
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xff7C7C7C),
                  ),
                  obscureText: true,
                ),

                SizedBox(height: 20),

                Center(
                  child: Row(
                    mainAxisAlignment: .center,
                    children: [
                      Text(
                        "By continuing you agree to our",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: .w400,
                          color: Color(0xff7C7C7C),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          " Terms of Service",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff53B175),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                Button(text: "Sing Up"),

                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff7C7C7C),
                      ),
                    ),

                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "login",
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
