import 'package:flutter/material.dart';
import 'package:logistics_elarning_application/utils/app_colors.dart';
import 'package:logistics_elarning_application/utils/text_style.dart';
import 'package:logistics_elarning_application/view/Common%20Widgets/text_button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              SizedBox(height: height * 0.10),

              // Welcome text
              Text(
                "Create an account",
                style: largeTextstyle,
              ),
              SizedBox(height: height * 0.01),

              // Subtext
              Text(
                "Create your account, it takes less than a minute.Enter your email and password",
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
                  text: "Create an account",
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
                text: "Continue with Google",
                color: blackShade,
                onPressed: () {},
                height: height,
                width: width,
                style: whitebuttonTextStyle,
              ),
              SizedBox(height: height * 0.01),

              AppTextButton(
                text: "Continue with Facebook",
                color: blackShade,
                onPressed: () {},
                height: height,
                width: width,
                style: whitebuttonTextStyle,
              ),
              SizedBox(height: height * 0.01),

              AppTextButton(
                text: "Continue with Apple",
                color: blackShade,
                onPressed: () {},
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
