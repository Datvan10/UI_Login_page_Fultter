import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';

// ignore: camel_case_types
class homePage extends StatelessWidget {
  homePage({super.key});
  final user = FirebaseAuth.instance.currentUser!;
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Home Page'),
        ),
        backgroundColor: tdGreen,
        actions: [IconButton(onPressed: signUserOut, icon: const Icon(Icons.logout))],
      ),
      body: Center(
        child: Text('Loggined in as ${user.email!}', style: const TextStyle(fontSize: 20.0),)
      ),
    );
  }
}
