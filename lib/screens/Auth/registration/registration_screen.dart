import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_restro/screens/Auth/registration/registration_controller.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text_field.dart';
import '../login/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  registrationScreenController controller = Get.put(registrationScreenController());
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
                const Text(
                  "BLISHBOWL",
                  style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.12,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold, fontSize: 35),
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
                        controller: controller.nameController.value,
                        hintText: 'enter your full name',
                        errortext: "Please enter full name",
                        icon: Icons.person_rounded,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter full name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomTextField(
                        controller: controller.emailController.value,
                        hintText: "enter your email",
                        errortext: "enter email",
                        icon: Icons.mail,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter email';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomTextField(
                        controller: controller.passwordController.value,
                        hintText: "enter your password",
                        errortext: "enter password",
                        icon: Icons.remove_red_eye_outlined,
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
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      CustomTextField(
                        controller: controller.confirmPasswordController.value,
                        hintText: "enter your password",
                        errortext: "enter password",
                        icon: Icons.remove_red_eye_outlined,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Confirm password is required';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      CustomButton(
                        text: "Sign Up",
                        onTap: () {
                          if (_formKey.currentState?.validate() == true) {
                            controller.register();
                          }
                        },
                        color: const Color.fromARGB(255, 239, 108, 0),
                        borderColor: const Color.fromARGB(255, 239, 108, 0),
                        textColor: Colors.white,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            const Text(
                              "Alrady have an Account ?",
                              style: TextStyle(color: Colors.black, fontSize: 14),
                            ),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                                },
                                child: Text(
                                  "Log in ",
                                  style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold, fontSize: 14),
                                )),
                          ],
                        ),
                      ),
                      const Text(
                        "Or",
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
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
                          const SizedBox(
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
