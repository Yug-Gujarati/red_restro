import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final IconData? icon;
  final String? Function(String?)? validator;
  final String errortext;

  CustomTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.icon,
    this.validator,
    required this.errortext,
  }) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.orange[800],
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.only(top: 1, bottom: 1),
        filled: true,
        fillColor: Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.orange[800], fontSize: 14),
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40),
          child: Icon(
            icon,
            color: Colors.orange[800],
            size: 20,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _formKey.currentState?.validate() == false ? Colors.red : const Color.fromARGB(255, 255, 153, 0),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: _formKey.currentState?.validate() == false ? Colors.red : const Color.fromARGB(255, 255, 153, 0),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: _formKey.currentState?.validate() == false ? Colors.red : const Color.fromARGB(255, 255, 153, 0),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 255, 153, 0),
          ),
          borderRadius: BorderRadius.circular(50),
        ),
        errorText: _formKey.currentState?.validate() == false ? errortext : null,
      ),
    );
  }

  void clearText() {
    controller?.clear();
  }
}
