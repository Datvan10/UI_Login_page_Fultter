import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_page/constants/colors.dart';

class homePage extends StatelessWidget {
  homePage({super.key});
  // final user = FirebaseAuth.instance.currentUser;
  void signUserOut() {
    // FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: tdGreen,
        actions: [IconButton(onPressed: signUserOut, icon: Icon(Icons.logout))],
      ),
      body: Center(
        child: Text(
          'Logged in',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
