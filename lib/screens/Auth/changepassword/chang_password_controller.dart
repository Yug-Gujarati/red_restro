import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:red_restro/screens/Auth/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class changePasswordController extends GetxController {
  final passwordController = TextEditingController().obs;
  final confirmPasswordController = TextEditingController().obs;

  var changPasswordState = RxBool(false);
  Future<void> changPassword() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String emailForForfote = prefs.getString('email') ?? '';
    final url = Uri.parse('http://10.0.2.2:3000/api/changepassword');
    try {
      final response = await http.post(
        url,
        body: jsonEncode({'email': emailForForfote, 'newPassword': passwordController.value.text, 'confirmPassword': confirmPasswordController.value.text}),
        headers: {
          'Content-Type': 'application/json',
        },
      );
      Map<String, dynamic> data = jsonDecode(response.body);
      int statusCode = data['status_code'];
      print(emailForForfote);

      if (statusCode == 200) {
        Get.to(() => const LoginScreen(), transition: Transition.rightToLeft, duration: const Duration(milliseconds: 600));
        Get.snackbar("Success", data['message'], backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.green, colorText: Colors.green, duration: const Duration(seconds: 4));
      } else if (statusCode == 400) {
        changPasswordState.value = false;
        String errorMessage = data['message'] ?? 'Something went wrong';
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      } else if (statusCode == 500) {
        changPasswordState.value = false;
        String errorMessage = data['message'] ?? "Somthing went wrong";
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      }
    } catch (e) {
      changPasswordState.value = false;
      Get.snackbar("Error", '$e', backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      print(e);
    }
  }
}
