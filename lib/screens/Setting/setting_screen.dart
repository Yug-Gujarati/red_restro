import 'package:flutter/material.dart';
import 'package:red_restro/screens/Setting/about_up_screen.dart';
import 'package:red_restro/screens/Setting/my_restaurant.dart';
import 'package:red_restro/screens/notification/notification_screen.dart';

import '../../components/drawer.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: const MyDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                  const SizedBox(
                    width: 10,
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NotificationScreen()));
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 30,
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    // hintText: "What you want today",
                    label: const Text(
                      "What you want today",
                      style: TextStyle(fontSize: 14),
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
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MyRestaurant()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "My Restaurant",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NotificationScreen()));
                  },
                  child: Row(
                    children: [
                      Text(
                        "Notification",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[400],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsScreeen(),
                        ));
                  },
                  child: Row(
                    children: [
                      Text(
                        "About Us",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 22,
                            fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.arrow_right,
                        size: 40,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutUsScreeen(),
                        ));
                  },
                  child: const Text(
                    "Delete Your Account",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ),
      )),
    );
  }
}
