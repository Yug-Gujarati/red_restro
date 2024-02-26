import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../components/custom_button.dart';
import 'chang_password_screen.dart';

class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
                    "OTP Verification",
                    style: TextStyle(
                        color: Colors.orange[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      "OTP has been sent to your email, ID please enter OTP",
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                cursorColor: Colors.orange[800],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter correct number';
                                  }
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle:
                                      TextStyle(color: Colors.orange[800]),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorText:
                                      _formKey.currentState?.validate() == false
                                          ? "Enter number"
                                          : null,
                                ),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                cursorColor: Colors.orange[800],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter correct number';
                                  }
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle:
                                      TextStyle(color: Colors.orange[800]),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorText:
                                      _formKey.currentState?.validate() == false
                                          ? "Enter number"
                                          : null,
                                ),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                cursorColor: Colors.orange[800],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter correct number';
                                  }
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle:
                                      TextStyle(color: Colors.orange[800]),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorText:
                                      _formKey.currentState?.validate() == false
                                          ? "Enter number"
                                          : null,
                                ),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 68,
                              width: 64,
                              child: TextFormField(
                                cursorColor: Colors.orange[800],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Enter correct number';
                                  }
                                },
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintStyle:
                                      TextStyle(color: Colors.orange[800]),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: _formKey.currentState
                                                  ?.validate() ==
                                              false
                                          ? Colors.red
                                          : Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color.fromARGB(255, 255, 153, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  errorText:
                                      _formKey.currentState?.validate() == false
                                          ? "Enter number"
                                          : null,
                                ),
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                },
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(1),
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        CustomButton(
                          text: "Verify",
                          color: const Color.fromARGB(255, 239, 108, 0),
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChangePasswordScreen()));
                          },
                          borderColor: const Color.fromARGB(255, 239, 108, 0),
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 35),
                          child: Row(
                            children: [
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
