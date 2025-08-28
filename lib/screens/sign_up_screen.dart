import 'package:flutter/material.dart';
import 'package:flutter_ui_task_3/helpers/constants.dart';
import 'package:flutter_ui_task_3/screens/dashboard.dart';
import 'package:flutter_ui_task_3/screens/login_screen.dart';
import 'package:flutter_ui_task_3/widgets/custom_auth_button.dart';
import 'package:flutter_ui_task_3/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var password;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
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
                    keyboardType: TextInputType.text,
                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "name can't be empty!";
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintTxt: "Valid Email",
                    sufixIcon: Icons.email_outlined,
                    controller: emailController,
                    keyboardType: TextInputType.text,
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
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintTxt: "Age",
                    sufixIcon: Icons.numbers,
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "please enter your age";
                      }
                      if (int.parse(value) > 120 || int.parse(value) < 1) {
                        return "please enter valid age";
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintTxt: "Phone Number",
                    sufixIcon: Icons.phone_android_outlined,
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your phone";
                      }
                      if (value.length > 13 || value.length < 13) {
                        return "Please enter a valid phone";
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintTxt: "Strong Password",
                    sufixIcon: Icons.remove_red_eye_outlined,
                    controller: passwordController,
                    isSecure: true,
                    keyboardType: TextInputType.text,
                    customValidator: (value) {
                      password = value;
                      if (value!.isEmpty) {
                        return "password can't be empty!";
                      }
                      if (value.length < 5) {
                        return "password must greater 5";
                      }
                      if (!RegExp(r'[!@#\$%^&*(),.?":{}|<>]').hasMatch(value)) {
                        return "Password should contain at least one special character";
                      }
                    },
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintTxt: "Confirm Password",
                    sufixIcon: Icons.remove_red_eye_outlined,
                    controller: confirmPasswordController,
                    isSecure: true,
                    keyboardType: TextInputType.text,
                    customValidator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm Password can't be empty!";
                      }
                      if (value != password) {
                        return "confirm pass don't match password!";
                      }
                    },
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
                  SizedBox(height: 24),
                  CustomAuthButton(
                    title: "SignUp",
                    onTap: () => _signUp(context),
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
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
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
        ),
      ),
    );
  }

  _signUp(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.reset();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Dashboard()),
      );
    }
  }
}
