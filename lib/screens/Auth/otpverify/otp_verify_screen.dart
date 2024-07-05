import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_restro/screens/Auth/otpverify/otp_verify_controller.dart';
import '../../../components/custom_button.dart';
import '../../../components/custom_text_field.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  otpVerifyController controller = Get.put(otpVerifyController());
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
                    "OTP Verification",
                    style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "OTP has been sent to your email, ID please enter OTP",
                      style: TextStyle(color: Colors.orange[800], fontSize: 12),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        CustomTextField(
                          controller: controller.otpcontroller.value,
                          hintText: 'enter your OTP',
                          errortext: "Please enter OTP",
                          icon: Icons.password_rounded,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter OTP';
                            } else if (value.length != 6) {
                              return 'Enter 6 Digit OTP';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.001,
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            Text("Did't receive an OTP?", style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.bold, fontSize: 14)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend",
                                  style: TextStyle(color: Colors.orange[800], fontWeight: FontWeight.w900, fontSize: 14),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        CustomButton(
                          text: "Verify OTP",
                          onTap: () {
                            if (_formKey.currentState?.validate() == true) {
                              controller.verifyOtp();
                            }
                          },
                          color: const Color.fromARGB(255, 239, 108, 0),
                          borderColor: const Color.fromARGB(255, 239, 108, 0),
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
