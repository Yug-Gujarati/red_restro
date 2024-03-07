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
  final _otpController = TextEditingController(text: '');
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
                  "OTP Verification",
                  style: TextStyle(
                      color: Colors.orange[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          for (int i = 0; i < 4; i++) buildOTPFormField(i),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      CustomButton(
                        text: "Verify",
                        color: const Color.fromARGB(255, 239, 108, 0),
                        onTap: () {
                          if (_formKey.currentState?.validate() == true) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ChangePasswordScreen()));
                          }
                        },
                        borderColor: const Color.fromARGB(255, 239, 108, 0),
                        textColor: Colors.white,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Text("Did't receive and email?",
                                style: TextStyle(
                                    color: Colors.orange[800],
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14)),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Resend",
                                  style: TextStyle(
                                      color: Colors.orange[800],
                                      fontWeight: FontWeight.w900,
                                      fontSize: 14),
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
    );
  }

  Widget buildOTPFormField(int index) {
    return SizedBox(
      width: 50.0,
      child: TextFormField(
        key: ValueKey(index),
        //controller: TextEditingController(text: ''),
        cursorColor: Colors.orange[800],
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Enter correct number';
          }
          return null;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 1, bottom: 1),
          filled: true,
          fillColor: Colors.white,
          hintStyle: TextStyle(color: Colors.orange[800]),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: _formKey.currentState?.validate() == false
                  ? Colors.red
                  : Color.fromARGB(255, 255, 153, 0),
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: _formKey.currentState?.validate() == false
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
          errorText: _formKey.currentState?.validate() == false
              ? "Enter number"
              : null,
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 3) {
            FocusScope.of(context).nextFocus(); // Move focus to next field
          }
        },
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
      ),
    );
  }
}
