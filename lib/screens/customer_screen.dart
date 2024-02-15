import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';

import 'Setting/my_restaurant.dart';
import 'notification/notification_screen.dart';

class CustomerScreen extends StatefulWidget {
  CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Map<String, String>> orders = [
    {
      'id': '1',
      'date': '5-2-24',
      'name': 'tomm',
      'address': 'Umra',
      'phone': '1231234156'
    },
    {
      'id': '2',
      'date': '5-2-24',
      'name': 'Jane',
      'address': 'Vesu',
      'phone': '1231234156'
    },
    {
      'id': '3',
      'date': '5-2-24',
      'name': 'aadi',
      'address': 'Ved',
      'phone': '1231234156'
    },
    {
      'id': '4',
      'date': '3-3-24',
      'name': 'Liii',
      'address': 'Adajan',
      'phone': '1231234156'
    },
    {
      'id': '5',
      'date': '4-3-24',
      'name': 'augi',
      'address': 'Vesu',
      'phone': '1231234156'
    },
    {
      'id': '6',
      'date': '6-5-24',
      'name': 'yabj',
      'address': 'ved',
      'phone': '1231234156'
    },
    {
      'id': '7',
      'date': '10-5-24',
      'name': 'Doee',
      'address': 'Adajan',
      'phone': '1231234156'
    },
    {
      'id': '8',
      'date': '19-10-24',
      'name': 'abdc',
      'address': 'Katargam',
      'phone': '1231234156'
    },
  ];

  int selectedOrderIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
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
                        "Customer",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
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
                          Navigator.push(
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
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Date: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 118, 118, 118))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Text(
                            "From: 01-01-2024",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 118, 118, 118),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 118, 118, 118))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Text(
                            "To: 01-01-2024",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        'Show Entry: ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 118, 118, 118))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Row(
                            children: [
                              Text(
                                "000",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "O'id",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Date",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      if (orders.isEmpty)
                        Center(
                            child: Container(
                          width: 500,
                          height: 570,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                              child: Image.asset(
                                  "assets/images/Untitled design.png")),
                        ))
                      else
                        for (int i = 0; i < orders.length; i++)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedOrderIndex = i;
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 15),
                              margin: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                color: selectedOrderIndex == i
                                    ? Colors.red[100]
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    orders[i]['id']!,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    orders[i]['date']!,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    orders[i]['name']!,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    orders[i]['address']!,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                  Text(
                                    orders[i]['phone']!,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          ),
                    ],
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
