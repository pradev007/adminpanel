import 'dart:ui';

import 'package:ap/app/modules/forgotPassword/views/forgot_password_view.dart';
import 'package:ap/app/modules/home/views/home_view.dart';
import 'package:ap/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
              width: 250.0,
              height: 250.0,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(
                  'assets/images/logo.png',
                ),
                // fit: BoxFit.cover,
              ))),
          Container(
            alignment: Alignment.center,
            width: 120.0,
            height: 50.0,
            child: const Text(
              "Sign In",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 1, 167, 9),
                  fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Name',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(" Forgot Password ?"),
              TextButton(
                onPressed: ((() => Get.off(
                      const ForgotPasswordView(),
                    ))),
                child: const Text(
                  " Reset !!",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          Container(
            height: 50,
            width: 20.0,
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              onPressed: (() => Get.off(const HomeView())),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 1, 167, 9),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Doesn't have a account? "),
              TextButton(
                onPressed: ((() => Get.off(
                      const SignupView(),
                    ))),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
