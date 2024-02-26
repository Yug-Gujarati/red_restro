import 'package:flutter/material.dart';
import '../../components/drawer.dart';
import 'add_new_product.dart';
import 'add_new_verient.dart';
import 'burger_screen.dart';
import 'drink_screen.dart';
import 'paneer_screen.dart';
import 'pizza_screen.dart';
import '../Setting/my_restaurant.dart';
import '../notification/notification_screen.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  //int selectedIndex = 0;
  bool showForm = false;
  bool showForm1 = false;

  final List<String> productCategories = [
    'Pizza',
    'Burger',
    'Panner',
    'Drink',
  ];

  late int currentPageIndex = 0;

  void initState() {
    super.initState();
    currentPageIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    Widget currentPage;

    switch (currentPageIndex) {
      case 0:
        currentPage = const PizzaScreen();
        break;
      case 1:
        currentPage = const BurgerScreen();
        break;
      case 2:
        currentPage = const PaneerScreen();
        break;
      case 3:
        currentPage = const DrinkScreen();
      default:
        currentPage = const PizzaScreen(); // Default to PizzaScreen
        break;
    }
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
                        "Product Categoty",
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
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 30,
                        width: 150,
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
                      InkWell(
                        onTap: () {
                          setState(() {
                            showForm = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              "Add New Product",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            showForm1 = true;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10),
                            child: Text(
                              "Add New Variant",
                              style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (showForm)
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Center(
                      child: AddNewProduct(),
                    ),
                  )
                else if (showForm1)
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Center(child: AddNewVerient()),
                  )
                else
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 50,
                                    width: 250,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: productCategories.length,
                                      itemBuilder: (context, index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              currentPageIndex = index;
                                            });
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Column(
                                              children: [
                                                Text(
                                                  productCategories[index],
                                                  style: TextStyle(
                                                    color: currentPageIndex ==
                                                            index
                                                        ? Colors.orange[800]
                                                        : Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                                Container(
                                                  height: 3,
                                                  width: 50,
                                                  color:
                                                      currentPageIndex == index
                                                          ? Colors.orange[800]
                                                          : Colors.transparent,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.orange[800],
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30, vertical: 10),
                                    child: Text(
                                      "Bill",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            currentPage,
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
