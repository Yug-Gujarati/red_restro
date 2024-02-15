import 'package:flutter/material.dart';
import 'package:red_restro/components/drawer.dart';
import 'package:red_restro/screens/Setting/setting_screen.dart';

import '../notification/notification_screen.dart';

class MyRestaurant extends StatelessWidget {
  const MyRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: MyDrawer(),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
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
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "My Restaurant",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  const SizedBox(
                    width: 10,
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
                    onTap: () {},
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
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SettingScreen()));
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.pink[200],
                                  borderRadius: BorderRadius.circular(10)),
                              child: Icon(
                                Icons.edit,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "General",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Icon(
                              Icons.add_photo_alternate,
                              color: Colors.grey[800],
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 16),
                            children: const [
                              TextSpan(text: 'Restaurant Name :'),
                              TextSpan(
                                text: ' RedRestro',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nRestaurant Email  :'),
                              TextSpan(
                                text: ' RedRestro12@gmail.com',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nPhone Number      :'),
                              TextSpan(
                                text: ' +91123-221-1122',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nTime                        :'),
                              TextSpan(
                                text: ' 07:00-23:59',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 16),
                            children: const [
                              TextSpan(text: 'Street Name           :'),
                              TextSpan(
                                text: ' ytsuidyuff',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(
                                  text: '\nCity                           :'),
                              TextSpan(
                                text: ' odsufuafielpu',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nZip-code                  :'),
                              TextSpan(
                                text: ' 325689',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nCountry                    :'),
                              TextSpan(
                                text: ' yuagfuy',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Billing",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 16),
                            children: const [
                              TextSpan(text: 'GST Number            :'),
                              TextSpan(
                                text: ' 123456',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nTax Label                  :'),
                              TextSpan(
                                text: ' GST',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nTax Value%               :'),
                              TextSpan(
                                text: ' 0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nRound off Value       :'),
                              TextSpan(
                                text: ' Disable',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: '\n'),
                              TextSpan(text: '\nRound off Totle        :'),
                              TextSpan(
                                text: ' Enable',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Payment Model",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "CASH",
                        style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "CARD",
                        style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "UPI",
                        style: TextStyle(color: Colors.grey[800], fontSize: 16),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
