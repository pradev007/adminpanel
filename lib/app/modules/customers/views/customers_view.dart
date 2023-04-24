import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../login/views/login_view.dart';
import '../controllers/customers_controller.dart';

class CustomersView extends GetView<CustomersController> {
  const CustomersView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(234, 13, 207, 78),
        title: const Text('Customers List'),
        leading: GestureDetector(
          onTap: (() => Get.off(const HomeView())),
          child: const Icon(Icons.arrow_back),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              columns: const [
                DataColumn(
                  label: Text("Id"),
                ),
                DataColumn(
                  label: Text("Name"),
                ),
                DataColumn(
                  label: Text("Phone"),
                ),
                DataColumn(
                  label: Text("email"),
                ),
                DataColumn(
                  label: Text("Address"),
                ),
                DataColumn(
                  label: Text("Status"),
                ),
              ],
              rows: const [
                // Set the values to the columns
                DataRow(cells: [
                  DataCell(Text("1")),
                  DataCell(Text("Alex")),
                  DataCell(Text("9844949456")),
                  DataCell(Text("pradip@gmail.com ")),
                  DataCell(Text("Rambazar 15, Pokhara, Gandaki, Nepal")),
                  DataCell(Text("Active")),
                ]),
                DataRow(cells: [
                  DataCell(Text("2")),
                  DataCell(Text("Blex")),
                  DataCell(Text("9844949456")),
                  DataCell(Text("pradip@gmail.com ")),
                  DataCell(Text("Rambazar 15, Pokhara, Gandaki, Nepal")),
                  DataCell(Text("Active")),
                ]),
              ],
            ),
          ),
          Container(
            width: 200.0,
            // color: Colors.greenAccent[300],
            margin: const EdgeInsets.all(12.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.amberAccent[200])),
              onPressed: (() => Get.off(const LoginView())),
              child: const Text(
                "Add Vendors",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
