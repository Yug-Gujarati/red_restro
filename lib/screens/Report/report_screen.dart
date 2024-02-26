import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';
import 'package:red_restro/screens/Report/purchase_screen.dart';
import 'package:red_restro/screens/Report/sales_screen.dart';

import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  bool showForm1 = false;
  int isTapIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Builder(
                        builder: (context) => InkWell(
                            child: Image.asset('assets/images/menu.png'),
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            }),
                      ),
                      const Spacer(),
                      const SizedBox(
                        width: 30,
                      ),
                      const Text(
                        "Setting",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NotificationScreen()));
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.notifications,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyRestaurant()));
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(color: Colors.black),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                    height: 30,
                    width: 570,
                    child: TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        // hintText: "What you want today",
                        label: const Text(
                          "What you want today",
                          style: TextStyle(fontSize: 12),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    width: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    isTapIndex = -1;
                                  });
                                },
                                child: Text(
                                  "Sales",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: isTapIndex == -1
                                          ? FontWeight.bold
                                          : FontWeight.normal),
                                )),
                            Container(
                              height: 20,
                              width: 1,
                              decoration: BoxDecoration(
                                color: Colors.grey[500],
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    isTapIndex = 0;
                                    showForm1 = true;
                                  });
                                },
                                child: Text(
                                  "Purchase",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: isTapIndex == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                )),
                          ],
                        ),
                        if (showForm1) PurchaseScreen() else SaleScreen()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
