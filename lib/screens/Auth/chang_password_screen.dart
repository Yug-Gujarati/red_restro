import 'package:flutter/material.dart';
import 'package:red_restro/components/custom_button.dart';
import '../../components/custom_text_field.dart';
import 'login_screen.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final passwordController = TextEditingController();
  final ConfirmpasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[50],
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.deepOrange[50],
            elevation: 0,
          )
        ],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/app_logo1.png'),
                  Text(
                    "BLISHBOWL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Reset your password",
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                  Text(
                    "Now you can change your password",
                    style: TextStyle(color: Colors.orange[800], fontSize: 12),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: passwordController,
                          hintText: 'enter your password',
                          errortext: "Please enter password",
                          icon: Icons.lock,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter password';
                            } else if (value.length < 8) {
                              return 'Password must be at least 8 characters long';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        CustomTextField(
                          controller: ConfirmpasswordController,
                          hintText: "enter your confirm Password",
                          errortext: "Enter confirm Password",
                          icon: Icons.lock,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter confirm Password';
                            } else if (value != passwordController.value.text) {
                              return 'Passwords do not match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                            text: "Reset Password",
                            onTap: () {
                              if (_formKey.currentState?.validate() == true) {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              }
                            },
                            color: const Color.fromARGB(255, 239, 108, 0),
                            borderColor: const Color.fromARGB(255, 239, 108, 0),
                            textColor: Colors.white),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
