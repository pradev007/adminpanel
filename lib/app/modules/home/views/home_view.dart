import 'package:ap/app/modules/categories/views/categories_view.dart';
import 'package:ap/app/modules/forgotPassword/views/forgot_password_view.dart';
import 'package:ap/app/modules/login/views/login_view.dart';
import 'package:ap/app/modules/order/views/order_view.dart';
import 'package:ap/app/modules/shop/views/shop_view.dart';
import 'package:ap/app/modules/vendor/views/vendor_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Admin Panel"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                    width: 250.0,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.black)),
                        contentPadding: EdgeInsets.all(10.0),
                        hintText: "Search",
                        labelStyle:
                            TextStyle(fontSize: 20.0, color: Colors.black45),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Container(
                  height: 40.0,
                  width: 70.0,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 7, 255, 81),
                  ),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    child: const Text("Add"),
                  ),
                ),
              ],
            ),
            Expanded(
              child: GridView.extent(
                maxCrossAxisExtent: 180.0,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                padding: const EdgeInsets.all(12.0),
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.off(const ShopView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/orders.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(const HomeView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/cat.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(const VendorView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/vendors.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(const ShopView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/customers.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(const ShopView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/shop.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.off(const ShopView());
                    },
                    child: Container(
                      // padding: const EdgeInsets.all(10.0),
                      color: const Color.fromARGB(255, 9, 56, 5),
                      child: const Image(
                        image: AssetImage('assets/images/help.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 200.0,
              // color: Colors.greenAccent[300],
              margin: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                onPressed: (() => Get.off(const LoginView())),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 70, 255, 64))),
                child: const Text(
                  "Logout",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color.fromARGB(255, 19, 56, 30)),
              accountName: Text(
                "Admin",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "pradipdevkota007@gmail.com",
                style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 212, 25, 0),
                child: Text(
                  "P",
                  style: TextStyle(fontSize: 40.0, color: Colors.amber),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.category),
              title: const Text("Categories"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CategoriesView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.password_outlined),
              title: const Text("Change Password"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ForgotPasswordView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.phone_android_rounded),
              title: const Text("Change Phone Number"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.store_mall_directory_sharp),
              title: const Text("Orders"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const OrderView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_outlined),
              title: const Text("Logout"),
              // tileColor: Color.fromARGB(255, 18, 212, 0),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginView()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
