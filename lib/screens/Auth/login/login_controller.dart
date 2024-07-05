import 'dart:convert';

//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:red_restro/screens/dashboard/dashbord_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class LoginPageController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  var loginStatus = RxBool(false);

  Future<void> saveTokenToPrefs(String token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('auth_token', token);
  }

  Future<void> login() async {
    final url = Uri.parse('http://10.0.2.2:3000/api/signin');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': emailController.value.text, 'password': passwordController.value.text}),
      );
      Map<String, dynamic> data = jsonDecode(response.body);
      int statusCode = data['status_code'];

      if (statusCode == 200) {
        print(statusCode);
        String token = data['token'];
        print("Token: " '$token');
        await saveTokenToPrefs(token);
        Get.to(() => const DashBord_Page(), transition: Transition.rightToLeft, duration: const Duration(milliseconds: 600));
        Get.snackbar("Success", data['message'], backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.green, colorText: Colors.green, duration: const Duration(seconds: 4));
      } else if (statusCode == 400) {
        loginStatus.value = false;
        String errorMessage = data['message'] ?? 'Something went wrong';
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      } else if (statusCode == 500) {
        loginStatus.value = false;
        String errorMessage = data['message'] ?? "Somthing went wrong";
        Get.snackbar("Error", errorMessage, backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
      }
    } catch (e) {
      loginStatus.value = false;
      Get.snackbar("Error", 'Server error', backgroundColor: Colors.white, borderWidth: 2, borderColor: Colors.red, colorText: Colors.red, duration: const Duration(seconds: 4));
    }
  }
}
