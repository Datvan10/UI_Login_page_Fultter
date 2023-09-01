import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';

// ignore: camel_case_types
class myButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const myButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child:  Center(
          child: Text(text, style: const TextStyle(color: tdWhite, fontSize: 18, fontWeight: FontWeight.bold),),
        ),
      ),
    );
  }
}