import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:red_restro/screens/dashboard/my_bar_chart.dart';

import '../../components/drawer.dart';
import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class DashBord_Page extends StatefulWidget {
  const DashBord_Page({super.key});

  @override
  State<DashBord_Page> createState() => _DashBord_PageState();
}

class _DashBord_PageState extends State<DashBord_Page> {
  final List<String> times = [
    'Yesterday',
    'Today',
    'Weekly',
    'Monthly',
    'Yearly',
  ];

  late int currentPageIndex = 0;
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(
                        height: 30,
                        width: 200,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            label: Text(
                              "What you want today",
                              style: TextStyle(fontSize: 10),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 15,
                            ),
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
                      const SizedBox(
                        width: 10,
                      ),
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
                const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    "Welome Admin,",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    "Your daily dashboard report here",
                    style: TextStyle(color: Colors.grey[700], fontSize: 14),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Revenue Report",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              "revenue report and chart is represent yeary data",
                              style: TextStyle(
                                  color: Colors.grey[800], fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Income",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  Text(
                                    "\$96.122",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "All Food",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Food",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Beverage",
                                      style: TextStyle(
                                          color: Colors.orange[900],
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          My_Bar_Chart(),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Order Summery",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 20,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.orange[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Today",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
                                    ),
                                    Icon(
                                      Icons.arrow_drop_down,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Container(
                              height: 50,
                              width: 450,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: times.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        currentPageIndex = index;
                                      });
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(),
                                      child: Column(
                                        children: [
                                          Text(
                                            times[index],
                                            style: TextStyle(
                                              color: currentPageIndex == index
                                                  ? Colors.orange[800]
                                                  : Colors.grey[800],
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                            ),
                                          ),
                                          const SizedBox(height: 5),
                                          Container(
                                            height: 3,
                                            width: 50,
                                            color: currentPageIndex == index
                                                ? Colors.orange[800]
                                                : Colors.transparent,
                                          ),
                                          Container(
                                            width: 70,
                                            height: 2,
                                            color: Colors.grey[800],
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircularPercentIndicator(
                                radius: 80,
                                lineWidth: 20,
                                percent: 0.8,
                                backgroundColor: Colors.white,
                                center: Text(
                                  "85%",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 28,
                                      fontWeight: FontWeight.bold),
                                ),
                                linearGradient: LinearGradient(
                                    colors: [Colors.orange, Colors.red],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "\$2,65,122.56",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 24),
                                    ),
                                    Text(
                                      "From \$3,00,000",
                                      style: TextStyle(
                                          color: Colors.grey[800],
                                          fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(
                                      "Loren ipsum dolor sit.",
                                      style: TextStyle(color: Colors.grey[800]),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Container(
                                      height: 30,
                                      width: 120,
                                      decoration: BoxDecoration(
                                          color: Colors.orange[50],
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "More Details",
                                            style: TextStyle(
                                                color: Colors.orange[900],
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "25",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "On Delivery",
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "60",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Delivery",
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 70,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.orange),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "2",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        "Canceled",
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 14),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.red[400],
                              child: Icon(
                                Icons.attach_money,
                                color: Colors.red[800],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\$96,122",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Total Income",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.green[400],
                              child: Icon(
                                Icons.document_scanner_outlined,
                                color: Colors.green[800],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "30",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Total menus",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                              ],
                            ),
                          ],
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
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.blue[400],
                              child: Icon(
                                Icons.person,
                                color: Colors.blue[800],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2120+",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Total customers",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 80,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundColor: Colors.amber[400],
                              child: Icon(
                                Icons.restaurant,
                                color: Colors.amber[800],
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "150",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Text(
                                  "Total orders",
                                  style: TextStyle(
                                      color: Colors.grey[600], fontSize: 14),
                                ),
                              ],
                            ),
                          ],
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
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Transection Summery",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircularPercentIndicator(
                                  radius: 30,
                                  lineWidth: 10,
                                  center: Text(
                                    "86%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  percent: 0.75,
                                  progressColor: Colors.greenAccent[400],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "392",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "Successfull orders",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                CircularPercentIndicator(
                                  radius: 30,
                                  lineWidth: 10,
                                  center: Text(
                                    "14%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  percent: 0.30,
                                  progressColor: Colors.purple,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "08",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Text(
                                      "Unsuccessfull orders",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
