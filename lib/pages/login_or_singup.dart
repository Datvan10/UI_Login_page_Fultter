import 'package:flutter/material.dart';
import 'package:login_page/pages/login_page.dart';
import 'package:login_page/pages/signup_page.dart';

class loginorSignUp extends StatefulWidget {
  const loginorSignUp({super.key});

  @override
  State<loginorSignUp> createState() => _loginorSignUpState();
}

class _loginorSignUpState extends State<loginorSignUp> {

  bool showloginPage = true;

  void togglePages(){
    setState(() {
      showloginPage = !showloginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(showloginPage){
      return loginPage(onTap: togglePages);
    }
    else{
      return signUpPage(
        onTap: togglePages,
      );
    }
  }
}