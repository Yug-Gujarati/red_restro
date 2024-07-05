import 'package:flutter/material.dart';
import 'package:red_restro/screens/vender/add_vender_form.dart';

import '../../components/drawer.dart';
import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class VenderPage extends StatefulWidget {
  const VenderPage({super.key});

  @override
  State<VenderPage> createState() => _VenderPageState();
}

class _VenderPageState extends State<VenderPage> {
  bool isErrorIconVisible = true;
  List<Map<String, String>> orders = [
    {
      'id': '1',
      'date': '5-2-24',
      'name': 'tomm',
      'address': 'Umra',
      'status': 'Food Supplier'
    },
    {
      'id': '2',
      'date': '5-2-24',
      'name': 'Jane',
      'address': 'Vesu',
      'status': 'Beverage Supplier'
    },
    {
      'id': '3',
      'date': '5-2-24',
      'name': 'aadi',
      'address': 'Ved',
      'status': 'Food Supplier'
    },
    {
      'id': '4',
      'date': '3-3-24',
      'name': 'Liii',
      'address': 'Adajan',
      'status': 'Food Supplier'
    },
    {
      'id': '5',
      'date': '4-3-24',
      'name': 'augi',
      'address': 'Vesu',
      'status': 'Food Supplier'
    },
    {
      'id': '6',
      'date': '6-5-24',
      'name': 'yabj',
      'address': 'ved',
      'status': 'Beverage Supplier'
    },
    {
      'id': '7',
      'date': '10-5-24',
      'name': 'Doee',
      'address': 'Adajan',
      'status': 'Food Supplier'
    },
    {
      'id': '8',
      'date': '19-10-24',
      'name': 'abdc',
      'address': 'Katargam',
      'status': 'Beverage Supplier'
    },
  ];

  int selectedOrderIndex = -1;

  void showForm() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: const AlertDialog(
              backgroundColor: Colors.white,
              scrollable: true,
              surfaceTintColor: Colors.white,
              content: AddVenderForm(),
              contentPadding: EdgeInsets.symmetric(horizontal: 20),
            ),
          );
        });
  }

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
                      "Vender",
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
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 30,
                      width: 170,
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          // hintText: "What you want today",
                          label: const Text(
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
                    Container(
                      height: 30,
                      width: 110,
                      decoration: BoxDecoration(
                          color: Colors.red[200],
                          borderRadius: BorderRadius.circular(5)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Vender Type",
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showForm();
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
                const SizedBox(
                  height: 5,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "V'id",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Date",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Name",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Address",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Status",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
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
                      Container(
                        width: 600,
                        height: 570,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5.0, right: 5),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: orders.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      selectedOrderIndex = index;
                                      showForm();
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: selectedOrderIndex == index
                                          ? Colors.red[100]
                                          : Colors.grey[200],
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          orders[index]['id']!,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        const Spacer(),
                                        Text(
                                          orders[index]['date']!,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        const Spacer(),
                                        Text(
                                          orders[index]['name']!,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        const Spacer(),
                                        Text(
                                          orders[index]['address']!,
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 10),
                                        ),
                                        const Spacer(),
                                        Text(
                                          "${orders[index]['status']}",
                                          style: TextStyle(
                                            color: orders[index]['status'] ==
                                                    'Delivery'
                                                ? Colors.green
                                                : Colors.red,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
