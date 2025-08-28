import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';
import 'package:flutter_ui_task_3/screens/dashboard.dart';
import 'package:flutter_ui_task_3/screens/sign_up_screen.dart';
import 'package:flutter_ui_task_3/widgets/custom_auth_button.dart';
import 'package:flutter_ui_task_3/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "images/loginPhoto.png",
                        width: 200,
                        height: 200,
                      ),
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

                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "email can't be empty !";
                      }
                      if (!value.contains('@')) {
                        return "email must contain @";
                      }
                      if (!value.endsWith('.com')) {
                        return "email must end with .com";
                      }
                    },
                    hintTxt: "Enter your email",
                    sufixIcon: Icons.email_outlined,
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 12),
                  CustomTextField(
                    controller: passwordController,
                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "password can't be empty !";
                      }
                      if (value.length < 5) {
                        return "password must greater 5";
                      }
                      if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return "Password should contain at least one special character";
                      }
                    },
                    hintTxt: "Password",
                    sufixIcon: Icons.remove_red_eye_outlined,
                    isSecure: true,
                    keyboardType: TextInputType.text,
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
                  SizedBox(height: 250),
                  CustomAuthButton(
                    title: "Next",
                    onTap: () => _login(context),
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
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
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
        ),
      ),
    );
  }

  _login(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.reset();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    }
  }
}
