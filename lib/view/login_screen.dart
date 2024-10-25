import 'package:flutter/material.dart';
import 'package:logistics_elarning_application/utils/app_colors.dart';
import 'package:logistics_elarning_application/utils/text_style.dart';
import 'package:logistics_elarning_application/view/Common%20Widgets/text_button.dart';
import 'package:logistics_elarning_application/view/signUp_screen.dart';

class LoginScreenUI extends StatelessWidget {
  const LoginScreenUI({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor:
          backgroundColor, // Background color as shown in the image
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0), // Spacing around the form
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon at the top
              Container(
                  //-------------------------------------------------------------------------
                  ),

              // Welcome text
              Text(
                "Welcome back,",
                style: largeTextstyle,
              ),
              SizedBox(height: height * 0.01),

              // Subtext
              Text(
                "We are happy to see you here again. Enter your email address and password.",
                textAlign: TextAlign.start,
                style: greyTextstyle,
              ),
              SizedBox(height: height * 0.03),

              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: greyTextstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),

              // Password TextField
              TextField(
                obscureText: true, // Hides the password text
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: greyTextstyle,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              // Login button
              AppTextButton(
                  text: "Login",
                  color: primaryColor,
                  onPressed: () {},
                  height: height,
                  width: width,
                  style: blackbuttonTextStyle),
              SizedBox(
                height: height * 0.02,
              ),
              // Forgot password
              Center(
                child: TextButton(
                  onPressed: () {
                    // Forgot password logic here
                  },
                  child: Text('Forgot password?', style: blackbuttonTextStyle),
                ),
              ),

              SizedBox(height: height * 0.01),

              // Create an account
              Row(
                children: const [
                  Expanded(child: Divider()), // Line divider
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text('or'),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: height * 0.04),

              // Create Account button
              AppTextButton(
                text: "Create an account",
                color: blackShade,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupScreen()));
                },
                height: height,
                width: width,
                style: whitebuttonTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
