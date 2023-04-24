import 'package:ap/app/modules/login/views/login_view.dart';
import 'package:ap/app/modules/otp/views/otp_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../controllers/forgot_password_controller.dart';

class ForgotPasswordView extends GetView<ForgotPasswordController> {
  const ForgotPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 350, 0),
            child: IconButton(
              onPressed: (() => Get.off(const LoginView())),
              icon: const Icon(
                Icons.arrow_back,
                size: 30.0,
              ),
            ),
          ),
          Image.asset(
            "assets/images/reset.png",
          ),
          const Center(
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 212, 71, 6)),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: 250.0,
            // height: 250.0,
            child: const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email id',
              ),
            ),
          ),
          SizedBox(
            width: 10.0,
            height: 50.0,
            child: ElevatedButton(
              onPressed: (() => Get.off(const OtpView())),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 6, 168, 46),
                ),
              ),
              child: const Text(
                'Request OTP',
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
