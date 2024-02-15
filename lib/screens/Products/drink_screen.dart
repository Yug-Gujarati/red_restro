import 'package:flutter/material.dart';

class DrinkScreen extends StatefulWidget {
  const DrinkScreen({super.key});

  @override
  State<DrinkScreen> createState() => _DrinkScreenState();
}

class _DrinkScreenState extends State<DrinkScreen> {
  List<Map<String, String>> items = [
    {
      'name': 'FAnta can',
      'price': '\$510',
    },
    {
      'name': 'Colo can',
      'price': '\$510',
    },
    {
      'name': 'Cola Bottle 1.5L',
      'price': '\$510',
    },
    {
      'name': 'Mirinda can',
      'price': '\$510',
    },
    {
      'name': 'Mountain dew 250ml',
      'price': '\$510',
    },
    {
      'name': 'Limika 750ml',
      'price': '\$510',
    },
    {
      'name': 'Mountain dew',
      'price': '\$510',
    },
    {
      'name': 'Pepsi can',
      'price': '\$510',
    },
    {
      'name': 'Sprite 750ml',
      'price': '\$510',
    },
    {
      'name': 'Veg Aloo Tikki',
      'price': '\$510',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.2, // Adjust aspect ratio as needed
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          scrollDirection: Axis.vertical,
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange[100],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    item['name']!,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    item['price']!,
                    style: TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
