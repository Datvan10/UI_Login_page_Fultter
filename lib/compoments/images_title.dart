import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';

// ignore: camel_case_types
class imagesTitle extends StatelessWidget {
  final String imagePath;
  const imagesTitle({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: tdWhite),
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey[200],
      ),
      child: Image.asset(imagePath, height: 40,),
    );
  }
}