import 'package:flutter/material.dart';
import 'package:login_page/compoments/images_title.dart';
import 'package:login_page/compoments/login_button.dart';
import 'package:login_page/compoments/text_field.dart';
import 'package:login_page/constants/colors.dart';

// ignore: camel_case_types
class loginPage extends StatelessWidget {
  loginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

//function when User login
  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Icon(
                Icons.lock,
                size: 80,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome to Login',
                style: TextStyle(
                    color: tdBlack,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 25,
              ),
              textField(
                controller: usernameController,
                hintText: 'Enter your name',
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              textField(
                  controller: passwordController,
                  hintText: 'Enter your password',
                  obscureText: true),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: tdBlue,decoration: TextDecoration.underline)
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              loginButton(
                onTap: loginUser,
              ),
              const SizedBox(
                height: 50,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: tdGray,
                    )),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: tdBlack),
                      ),
                    ),
                    Expanded(
                        child: Divider(
                      thickness: 0.5,
                      color: tdGray,
                    ))
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  imagesTitle(
                    imagePath: 'assets/images/apple.png',
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  imagesTitle(
                    imagePath: 'assets/images/google.png',
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?', style: TextStyle(color: tdBlack)),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Sign Up', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, decoration: TextDecoration.underline),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
