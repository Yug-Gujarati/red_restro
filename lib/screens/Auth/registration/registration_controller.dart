import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:red_restro/screens/Auth/otpverify/otp_verify_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registrationScreenController extends GetxController {
  final nameController = TextEditingController().obs;
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  var registerStatus = RxBool(false);
  final Dio dio = Dio();

  Future<void> saveEmail(String email) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
  }

  Future<void> register() async {
    final url = Uri.parse('http://10.0.2.2:3000/api/signup');
    final emailUrl = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    try {
      final response = await http.post(
        url,
        body: jsonEncode({'name': nameController.value.text, 'email': emailController.value.text, 'password': passwordController.value.text, 'confirmPassword': confirmPasswordController.value.text}),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      Map<String, dynamic> data = jsonDecode(response.body);
      int statusCode = data['status_code'];
      if (statusCode == 200) {
        String OTP = data['data']['otp'];
        String email = data['data']['email'];
        print("otp: " '$OTP');
        await saveEmail(email);
        const serviceId = 'service_x3ktq6b';
        const templateId = 'template_ennec3h';
        const userId = 'vJbps_Z1ze7dmxlDv';
        final response = await http.post(
          emailUrl,
          headers: {
            'origin': 'http://localhost',
            'Content-Type': 'application/json',
          },
          // options: Options(headers: {

          // }),
          body: json.encode({
            'service_id': serviceId,
            'template_id': templateId,
            'user_id': userId,
            'template_params': {
              'user_name': nameController.value.text,
              'to_email': emailController.value.text,
              'user_message': OTP,
            },
          }),
        );
        Get.to(() => const OtpVerifyScreen(), transition: Transition.rightToLeft, duration: const Duration(milliseconds: 600));
        Get.snackbar("Success", data['message'], backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.green, colorText: Colors.green, duration: const Duration(seconds: 4));
      } else if (statusCode == 400) {
        registerStatus.value = false;
        String errorMessage = data['message'] ?? 'Something went wrong';
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      } else if (statusCode == 500) {
        registerStatus.value = false;
        String errorMessage = data['message'] ?? "Somthing went wrong";
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      }
    } catch (e) {
      registerStatus.value = false;
      Get.snackbar("Error", '$e', backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
    }
  }
}
