import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';
import 'package:red_restro/screens/staff/booking_manager_screen.dart';
import 'package:red_restro/screens/staff/add_detail_form.dart';
import 'package:red_restro/screens/staff/kitchen_manager_screen.dart';
import 'package:red_restro/screens/staff/waiter_screen.dart';

import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class StaffScreen extends StatefulWidget {
  const StaffScreen({super.key});

  @override
  State<StaffScreen> createState() => _StaffScreenState();
}

class _StaffScreenState extends State<StaffScreen> {
  int isTapIndex = -1;
  bool formOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const MyDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                        "Staff",
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
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 280,
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            formOpen = true;
                          });
                        },
                        child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.red[200],
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Icon(
                              Icons.person_add,
                              color: Colors.black,
                              size: 20,
                            ))),
                      )
                    ],
                  ),
                ),
                if (formOpen)
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 600,
                      width: 500,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Column(
                            children: [AddDetailForm()],
                          ),
                        ),
                      ),
                    ),
                  )
                else
                  Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column(children: [
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
                                  "Booking Manager",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
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
                                  });
                                },
                                child: Text(
                                  "Waiter",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: isTapIndex == 0
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
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
                                    isTapIndex = 1;
                                  });
                                },
                                child: Text(
                                  "Kitchen Manager",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: isTapIndex == 1
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                )),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: [
                                if (isTapIndex == -1)
                                  const BookingManagerScreen()
                                else if (isTapIndex == 0)
                                  const WaiterScreen()
                                else if (isTapIndex == 1)
                                  const KitchenManagerScreen()
                              ],
                            ),
                          ),
                        ),
                      ])),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
