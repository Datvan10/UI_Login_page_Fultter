import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';

// ignore: camel_case_types
class loginButton extends StatelessWidget {
  final Function()? onTap;
  const loginButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: const Center(
          child: Text('Sign In', style: TextStyle(color: tdWhite, fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}