import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';


// ignore: camel_case_types
class textField extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final controller;
  final String hintText;
  final bool obscureText;

  const textField({
      super.key,
      required this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: tdWhite)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: tdGray)),
          fillColor: tdWhite,
          filled: true,
          hintText: hintText,
          hintStyle:  const TextStyle(color: tdGray)
        ),
      ),
    );
  }
}
