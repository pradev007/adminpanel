import 'package:ap/app/modules/home/views/home_view.dart';
import 'package:ap/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 20, 350, 0),
              child: IconButton(
                onPressed: (() => Get.off(const LoginView())),
                icon: const Icon(
                  Icons.arrow_back,
                  size: 30.0,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20.0),
              width: 300.0,
              height: 200.0,
              // color: Colors.amber,
              child: const Image(image: AssetImage('assets/images/logo.png')),
            ),
            const SizedBox(
              width: 200.0,
              height: 90.0,
              child: Center(
                  child: Text(
                "SignUp",
                style: TextStyle(
                    color: Color.fromARGB(255, 2, 165, 29),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              )),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ("UserName"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ("email"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Phone"),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
              ),
            ),
            Container(
              width: 100.0,
              // color: Colors.greenAccent[300],
              margin: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: (() => Get.off(const HomeView())),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 1, 158, 82))),
                child: const Text(
                  "SignUp",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
