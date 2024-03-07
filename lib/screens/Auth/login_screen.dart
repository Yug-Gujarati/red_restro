import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:red_restro/components/custom_button.dart';
import 'package:red_restro/components/custom_text_field.dart';
import 'package:red_restro/screens/dashboard/dashbord_page.dart';

import 'forgot_password_screen.dart';
import 'registration_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/images/app_logo1.png',
                  width: MediaQuery.of(context).size.width * 0.15,
                ),
                Text(
                  "BLISHBOWL",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Text(
                  "Get Started",
                  style: TextStyle(
                      color: Colors.orange[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                Text(
                  "Please fill your detail to access your account",
                  style: TextStyle(color: Colors.orange[800], fontSize: 12),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        controller: emailController,
                        hintText: 'enter your email',
                        errortext: "Please enter email",
                        icon: Icons.mail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          } else if (!RegExp(
                                  r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomTextField(
                        controller: passwordController,
                        hintText: "enter your password",
                        errortext: "enter password",
                        icon: Icons.remove_red_eye_outlined,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.001,
                      ),
                      Row(
                        children: [
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ForgotPasswordScreen()));
                              },
                              child: Text(
                                "Forgot Password ?",
                                style: TextStyle(
                                    color: Colors.orange[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14),
                              )),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      CustomButton(
                        text: "Log in",
                        onTap: () {
                          if (_formKey.currentState?.validate() == true) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DashBord_Page()));
                          }
                        },
                        color: const Color.fromARGB(255, 239, 108, 0),
                        borderColor: const Color.fromARGB(255, 239, 108, 0),
                        textColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an Account ?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              RegistrationScreen()));
                                },
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.orange[800],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                            Spacer(),
                          ],
                        ),
                      ),
                      Text(
                        "Or",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/google.png',
                                height: 25,
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.white,
                              child: Image.asset(
                                'assets/images/facebook.png',
                                height: 25,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
