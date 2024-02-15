import 'package:flutter/material.dart';
import 'package:red_restro/screens/staff/edit_staff_detail.dart';

class WaiterScreen extends StatefulWidget {
  const WaiterScreen({super.key});

  @override
  State<WaiterScreen> createState() => _WaiterScreenState();
}

class _WaiterScreenState extends State<WaiterScreen> {
  bool isForm = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (isForm)
            EditStaffDetail()
          else
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      "B'id",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      "Name",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isForm = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        "001",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Chunky Desuza",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isForm = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        "002",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Rajal Kayal",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isForm = true;
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        "003",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Veer Mahade",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "004",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Teja Donda",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "005",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Mahesh Babu",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "006",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Raja Fazi",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "007",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Surya Marathi",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "008",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Faizal Khan",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  color: Colors.grey[400],
                  height: 1,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "009",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Chaman",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    ],
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}