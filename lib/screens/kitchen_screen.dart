import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';
import 'package:red_restro/screens/dashboard/dashbord_page.dart';

class KitchenScreen extends StatefulWidget {
  const KitchenScreen({super.key});

  @override
  State<KitchenScreen> createState() => _KitchenScreenState();
}

class _KitchenScreenState extends State<KitchenScreen> {
  int isTapIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const DashBord_Page())));
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                        )),
                    const Spacer(),
                    const Text(
                      "Kitchen",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 500,
                  height: 580,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Orders",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              const SizedBox(height: 5),
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange[50],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.orange[100],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Table no: 06",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Din in",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "item",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "Qty",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Important Note",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              const Text(
                                                " -Do not add garlic and onion",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = -1;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex ==
                                                                  -1
                                                              ? Colors.red[800]
                                                              : Colors.red[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex == 0
                                                              ? Colors
                                                                  .green[800]
                                                              : Colors
                                                                  .green[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "Done",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange[50],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.green[100],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Table no: 06",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Din in",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "items",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "Qty",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Important Note",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              const Text(
                                                " -Do not add garlic and onion",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = -1;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex ==
                                                                  -1
                                                              ? Colors.red[800]
                                                              : Colors.red[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex == 0
                                                              ? Colors
                                                                  .green[800]
                                                              : Colors
                                                                  .green[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "Done",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: [
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange[50],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.green[100],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Table no: 06",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Din in",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "item",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "Qty",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Thumpsup",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Panner Kadhai",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "1",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Important Note",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              const Text(
                                                " -Do not add garlic and onion",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = -1;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex ==
                                                                  -1
                                                              ? Colors.red[800]
                                                              : Colors.red[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex == 0
                                                              ? Colors
                                                                  .green[800]
                                                              : Colors
                                                                  .green[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "Done",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange[50],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 30,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[100],
                                          borderRadius: const BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10)),
                                        ),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Table no: 06",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Spacer(),
                                                Text(
                                                  "Din in",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ]),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "items",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Spacer(),
                                            Text(
                                              "Qty",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Extra chess pizza",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "2",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Burger",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                            Spacer(),
                                            Text(
                                              "3",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.orange[200],
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(10),
                                              bottomRight: Radius.circular(10)),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const Text(
                                                "Important Note",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12),
                                              ),
                                              const Text(
                                                " -Do not add garlic and onion",
                                                style: TextStyle(fontSize: 12),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = -1;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex ==
                                                                  -1
                                                              ? Colors.red[800]
                                                              : Colors.red[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "No",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        isTapIndex = 0;
                                                      });
                                                    },
                                                    child: Container(
                                                      width: 60,
                                                      height: 20,
                                                      decoration: BoxDecoration(
                                                          color: isTapIndex == 0
                                                              ? Colors
                                                                  .green[800]
                                                              : Colors
                                                                  .green[200],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5)),
                                                      child: const Center(
                                                        child: Text(
                                                          "Done",
                                                          style: TextStyle(
                                                              fontSize: 10,
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
