import 'package:ap/app/modules/forgotPassword/views/forgot_password_view.dart';
import 'package:ap/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_controller.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OtpView extends GetView<OtpController> {
  const OtpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 350, 0),
            child: IconButton(
              onPressed: (() => Get.off(const ForgotPasswordView())),
              icon: const Icon(
                Icons.arrow_back,
                size: 30.0,
              ),
            ),
          ),
          Container(
            height: 250.0,
            child: Image.asset(
              "assets/images/otp.jpg",
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            // ignore: prefer_const_constructors
            child: Center(
              child: const Text(
                "Please enter OTP ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 1, 167, 9),
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20.0),
            child: OtpTextField(
              numberOfFields: 5,
              showFieldAsBox: true,
              borderWidth: 2.0,
              onCodeChanged: (String code) {
                // handel validation here
              },
              onSubmit: (String verificationCode) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    });
              },
            ),
          ),
          Container(
            width: 100.0,
            padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: (() => Get.off(const HomeView())),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromARGB(255, 1, 167, 9))),
              child: const Text("Verify"),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(" Didnot received OTP ?"),
              TextButton(
                onPressed: ((() => Get.off(
                      const ForgotPasswordView(),
                    ))),
                child: const Text(
                  " Resend code ",
                  style:
                      TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
