import 'package:flutter/material.dart';

import 'my_report.dart';

class PurchaseScreen extends StatefulWidget {
  const PurchaseScreen({super.key});

  @override
  State<PurchaseScreen> createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  void reportShow() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          content: MyReport(),
        );
      },
    );
  }

  void showMessage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.arrow_circle_down_outlined,
                  color: Colors.green,
                  size: 80,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Report Downloaded',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.of(context).pop();
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.orange[800],
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  final List<Map<String, String>> data = [
    {
      'date': '10-Jan-2024',
      'day': 'Wednesday',
    },
    {
      'date': '09-Jan-2024',
      'day': 'Tuesday  ',
    },
    {
      'date': '08-Jan-2024',
      'day': 'Monday   ',
    },
    {
      'date': '07-Jan-2024',
      'day': 'Sunday   ',
    },
    {
      'date': '06-Jan-2024',
      'day': 'Saturday ',
    },
    {
      'date': '05-Jan-2024',
      'day': 'Friday   ',
    },
    {
      'date': '04-Jan-2024',
      'day': 'Thursday ',
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text(
                    "Past 7 days",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      reportShow();
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 156, 255, 43),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(
                        Icons.filter_alt,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  showMessage();
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final sale = data[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(sale['date']!),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(sale['day']!),
                              const Spacer(),
                              Container(
                                height: 30,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.orange[800],
                                    borderRadius: BorderRadius.circular(5)),
                                child: const Center(
                                  child: Text(
                                    "Get Report",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[400],
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    "Monthly Report",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: GestureDetector(
                onTap: () {
                  showMessage();
                },
                child: ListView.builder(
                  shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final sale = data[index];
                    return Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(sale['date']!),
                              const SizedBox(
                                width: 30,
                              ),
                              Text(sale['day']!),
                              const Spacer(),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.orange[800],
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      "Get Report",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
