import 'package:flutter/material.dart';
import 'package:red_restro/components/my_list_titles.dart';
import 'package:red_restro/screens/customer_screen.dart';
import 'package:red_restro/screens/dashboard/dashbord_page.dart';
import 'package:red_restro/screens/kitchen_screen.dart';
import 'package:red_restro/screens/order_screen.dart';
import 'package:red_restro/screens/Products/product_screen.dart';
import 'package:red_restro/screens/Report/report_screen.dart';
import 'package:red_restro/screens/Setting/setting_screen.dart';
import 'package:red_restro/screens/staff/staff_screen.dart';
import 'package:red_restro/screens/tables/table_screen.dart';
import 'package:red_restro/screens/vender_page.dart';

import '../screens/Auth/login_screen.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  int tappedIndex = -1;

  @override
  Widget build(BuildContext context) {
    void dashboardPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DashBord_Page(),
          ));
    }

    void settingPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SettingScreen(),
          ));
    }

    void orderPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderScreen(),
          ));
    }

    void venderPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VenderPage(),
          ));
    }

    void customerPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomerScreen(),
          ));
    }

    void productPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(),
          ));
    }

    void tablePage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TableScreen(),
          ));
    }

    void reportPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ReportScreen(),
          ));
    }

    void kitchnPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => KitchenScreen(),
          ));
    }

    void staffPage() {
      Navigator.pop(context);
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => StaffScreen(),
          ));
    }

    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
            child: ListTile(
              leading: Container(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/images/app_logo1.png",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                "BLISHBOWL",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30),
            child: Column(
              children: [
                MyListTile(
                  icon: Icons.home,
                  text: "Dashboard",
                  onTap: () {
                    setState(() {
                      tappedIndex = 0;
                      dashboardPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.restaurant,
                  text: "Order",
                  onTap: () {
                    setState(() {
                      tappedIndex = 1;
                      orderPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.storefront,
                  text: "Vender",
                  onTap: () {
                    setState(() {
                      tappedIndex = 2;
                      venderPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.person,
                  text: "Customer",
                  onTap: () {
                    setState(() {
                      tappedIndex = 3;
                      customerPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.table_chart,
                  text: "Product",
                  onTap: () {
                    setState(() {
                      tappedIndex = 4;
                      productPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.table_bar,
                  text: "Table",
                  onTap: () {
                    setState(() {
                      tappedIndex = 5;
                      tablePage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.bar_chart,
                  text: "Report",
                  onTap: () {
                    setState(() {
                      tappedIndex = 6;
                      reportPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.delete,
                  text: "Wastage",
                  onTap: () {
                    setState(() {
                      tappedIndex = 7;
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.settings,
                  text: "Setting",
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingScreen(),
                        ));
                    setState(() {
                      tappedIndex = 8;
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.kitchen,
                  text: "Kitchen",
                  onTap: () {
                    setState(() {
                      tappedIndex = 9;
                      kitchnPage();
                    });
                  },
                ),
                MyListTile(
                  icon: Icons.groups,
                  text: "Staff",
                  onTap: () {
                    setState(() {
                      tappedIndex = 10;
                      staffPage();
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10, left: 70),
            child: ListTile(
              leading: Text(
                "Log Out",
                style: TextStyle(fontSize: 20, color: Colors.grey[700]),
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ));
              },
              title: Icon(
                Icons.arrow_right,
                color: Colors.black,
                size: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:red_restro/screens/dashbord_page.dart';
// import 'package:red_restro/screens/login_screen.dart';
// import 'package:red_restro/screens/setting_screen.dart';

// class MyDrawer extends StatefulWidget {
//   const MyDrawer({
//     Key? key,
//   }) : super(key: key);

//   @override
//   _MyDrawerState createState() => _MyDrawerState();
// }

// class _MyDrawerState extends State<MyDrawer> {
//   final List<Map<String, dynamic>> _pages = [
//     {'title': 'Dashboard', 'icon': Icons.home, 'page': DashBord_Page()},
//     {'title': 'Order', 'icon': Icons.restaurant, 'page': ()},
//     {'title': 'Vender', 'icon': Icons.storefront, 'page': ()},
//     {'title': 'Customer', 'icon': Icons.person, 'page': ()},
//     {'title': 'Product', 'icon': Icons.table_chart, 'page': ()},
//     {'title': 'Table', 'icon': Icons.table_bar, 'page': ()},
//     {'title': 'Report', 'icon': Icons.bar_chart, 'page': ()},
//     {'title': 'Wastage', 'icon': Icons.delete, 'page': ()},
//     {'title': 'Setting', 'icon': Icons.settings, 'page': SettingScreen()},
//     {'title': 'Kitchen', 'icon': Icons.kitchen, 'page': ()},
//     {'title': 'Staff', 'icon': Icons.group, 'page': ()},
//   ];
//   int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.white,
//       child: ListView(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
//             child: ListTile(
//               leading: Container(
//                 height: 30,
//                 width: 30,
//                 child: Image.asset(
//                   "assets/images/app_logo1.png",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               title: Text(
//                 "BLISHBOWL",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: EdgeInsets.only(left: 30, right: 30),
//             child: Column(
//               children: [
//                 for (int i = 0; i < _pages.length; i++)
//                   ListTileTheme(
//                     child: ListTile(
//                       leading: Icon(
//                         _pages[i]['icon'],
//                         color: i == _selectedIndex
//                             ? Colors.orange[800]
//                             : Colors.black,
//                       ),
//                       title: Text(
//                         _pages[i]['title'],
//                         style: TextStyle(
//                             color: i == _selectedIndex
//                                 ? Colors.orange[800]
//                                 : Colors.black),
//                       ),
//                       selected: i == _selectedIndex,
//                       selectedTileColor: Colors.orange[100],
//                       onTap: () {
//                         setState(() {
//                           _selectedIndex = i;
//                         });
//                         Navigator.pop(context);
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => _pages[i]['page']));
//                       },
//                     ),
//                   ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(bottom: 10, left: 70, top: 10),
//             child: ListTile(
//               leading: Text(
//                 "Log Out",
//                 style: TextStyle(fontSize: 20, color: Colors.grey[700]),
//               ),
//               onTap: () {
//                 Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => LoginScreen(),
//                     ));
//               },
//               title: Icon(
//                 Icons.arrow_right,
//                 color: Colors.black,
//                 size: 40,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
