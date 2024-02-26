import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';
import 'package:red_restro/screens/tables/my_tabel.dart';

import 'add_table.dart';
import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  void showOrderDetailsDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          content: AddTable(),
        );
      },
    );
  }

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
                        "Table",
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
                                  builder: (context) => NotificationScreen()));
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
                                  builder: (context) => MyRestaurant()));
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
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Free",
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Occupied",
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 14),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.red,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Reservation",
                                style: TextStyle(
                                    color: Colors.grey[800], fontSize: 14),
                              ),
                              Spacer(),
                              InkWell(
                                onTap: () {
                                  showOrderDetailsDialog();
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange[100],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Text(
                                      "+ Add Table",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: MyTable(),
                          ),
                        ],
                      ),
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
