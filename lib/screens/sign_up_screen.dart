import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';
import 'package:flutter_ui_task_3/screens/login_screen.dart';
import 'package:flutter_ui_task_3/widgets/custom_auth_button.dart';
import 'package:flutter_ui_task_3/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Image.asset("images/loginPhoto.png", width: 200, height: 200),
                  Positioned(
                    bottom: 0,
                    left: 20,
                    child: Column(
                      children: [
                        Text(
                          "Get Started",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "by creating a free account.",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              CustomTextField(
                hintTxt: "Full Name",
                sufixIcon: Icons.person_2_outlined,
                controller: nameController,
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintTxt: "Valid Email",
                sufixIcon: Icons.email_outlined,
                controller: emailController,
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintTxt: "Phone Number",
                sufixIcon: Icons.phone_android_outlined,
                controller: phoneController,
              ),
              SizedBox(height: 16),
              CustomTextField(
                hintTxt: "Strong Password",
                sufixIcon: Icons.remove_red_eye_outlined,
                controller: passwordController,
                isSecure: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    activeColor: AppConstants.primaryColor,
                    value: false,
                    onChanged: (value) {},
                  ),
                  Text(
                    "By checking the box you agree to our",
                    style: TextStyle(fontSize: 10),
                  ),
                  Text(
                    " Terms",
                    style: TextStyle(
                      fontSize: 10,
                      color: AppConstants.primaryColor,
                    ),
                  ),
                  Text(" and", style: TextStyle(fontSize: 10)),
                  Text(
                    " Conditions",
                    style: TextStyle(
                      fontSize: 10,
                      color: AppConstants.primaryColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomAuthButton(
                title: "Next",
                onTap: () {},
                icon: Icons.arrow_forward_ios_outlined,
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already a member? "),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: AppConstants.primaryColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
