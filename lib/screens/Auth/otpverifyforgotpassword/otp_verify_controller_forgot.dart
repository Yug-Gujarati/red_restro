import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../changepassword/chang_password_screen.dart';

class otpVerifyControllerForgot extends GetxController {
  final otpcontroller = TextEditingController().obs;

  var otpStatus = RxBool(false);

  Future<void> verifyOtp() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String emailForForfote = prefs.getString('email') ?? '';
    final url = Uri.parse('http://10.0.2.2:3000/api/verify-otp');
    try {
      final response = await http.post(
        url,
        body: jsonEncode({'email': emailForForfote, 'otp': otpcontroller.value.text}),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      Map<String, dynamic> data = jsonDecode(response.body);
      int statusCode = data['status_code'];

      if (statusCode == 201) {
        Get.to(() => const ChangePasswordScreen(), transition: Transition.rightToLeft, duration: const Duration(milliseconds: 600));
        Get.snackbar("Success", data['message'], backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.green, colorText: Colors.green, duration: const Duration(seconds: 4));
      } else if (statusCode == 400) {
        otpStatus.value = false;
        String errorMessage = data['message'] ?? 'Something went wrong';
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      } else if (statusCode == 500) {
        otpStatus.value = false;
        String errorMessage = data['message'] ?? "Somthing went wrong";
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      }
    } catch (e) {
      otpStatus.value = false;
      Get.snackbar("Error", '$e', backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
    }
  }
}
