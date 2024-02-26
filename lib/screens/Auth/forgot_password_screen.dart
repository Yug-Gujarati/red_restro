import 'package:flutter/material.dart';

import '../../components/custom_button.dart';
import '../../components/custom_text_field.dart';
import 'login_screen.dart';
import 'otp_verify_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
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
                  const Text(
                    "BLISHBOWL",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "Please enter your register email and we will send you password reset instruction to this email",
                      style: TextStyle(color: Colors.orange[800], fontSize: 12),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: emailController,
                          hintText: 'enter your Email',
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
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Spacer(),
                            Text("Did't receive and email?",
                                style: TextStyle(
                                    color: Colors.orange[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      color: Colors.orange[800],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 16),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          text: "Send OTP",
                          onTap: () {
                            if (_formKey.currentState?.validate() == true) {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpVerifyScreen()));
                            }
                          },
                          color: const Color.fromARGB(255, 239, 108, 0),
                          borderColor: const Color.fromARGB(255, 239, 108, 0),
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomButton(
                          text: 'Cancle',
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          color: Colors.white,
                          borderColor: const Color.fromARGB(255, 239, 108, 0),
                          textColor: Colors.black,
                        ),
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
