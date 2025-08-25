import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';
import 'package:flutter_ui_task_3/screens/dashboard.dart';
import 'package:flutter_ui_task_3/screens/sign_up_screen.dart';
import 'package:flutter_ui_task_3/widgets/custom_auth_button.dart';
import 'package:flutter_ui_task_3/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                          "Welcome back",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "sign in to access your account",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
              CustomTextField(
                controller: emailController,
                hintTxt: "Enter your email",
                sufixIcon: Icons.email_outlined,
              ),
              SizedBox(height: 12),
              CustomTextField(
                controller: passwordController,
                hintTxt: "Password",
                sufixIcon: Icons.remove_red_eye_outlined,
                isSecure: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppConstants.primaryColor,
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text("Remember me", style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: AppConstants.primaryColor,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              Spacer(),
              CustomAuthButton(
                title: "Next",
                onTap: () {
                  String emailData = emailController.text;
                  String passwordData = passwordController.text;
                  final symbolRegex = RegExp(r'[!@#\$%^&*(),.?":{}|<>]');

                  if (emailData.isEmpty | passwordData.isEmpty) {
                    showMessage("Fields can't be emapty!", context);
                    emailController.clear();
                    passwordController.clear();
                  } else if (!emailData.contains('@') |
                      !emailData.endsWith('.com')) {
                    showMessage("Please enter valid email!", context);
                    emailController.clear();
                  } else if (passwordData.length < 5) {
                    showMessage("Password can't be less than 5", context);
                    passwordController.clear();
                  } else if (!symbolRegex.hasMatch(passwordData)) {
                    showMessage("Password should has a character", context);
                    passwordController.clear();
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  }
                },
                icon: Icons.arrow_forward_ios_outlined,
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("New member?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Register Now",
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
