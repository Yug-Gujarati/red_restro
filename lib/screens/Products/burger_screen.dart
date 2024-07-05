import 'package:flutter/material.dart';

class BurgerScreen extends StatefulWidget {
  const BurgerScreen({super.key});

  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}

class _BurgerScreenState extends State<BurgerScreen> {
  List<Map<String, String>> items = [
    {
      'name': 'Fried chiken & Meat Burger',
      'price': '\$510',
    },
    {
      'name': 'Tomato Burger',
      'price': '\$510',
    },
    {
      'name': 'Chees Burger',
      'price': '\$510',
    },
    {
      'name': 'Chicken Burger',
      'price': '\$510',
    },
    {
      'name': 'Veg Aloo Tikki',
      'price': '\$510',
    },
    {
      'name': 'Fried chiken & Meat Burger',
      'price': '\$510',
    },
    {
      'name': 'Tomato Burger',
      'price': '\$510',
    },
    {
      'name': 'Chees Burger',
      'price': '\$510',
    },
    {
      'name': 'Chicken Burger',
      'price': '\$510',
    },
    {
      'name': 'Veg Aloo Tikki',
      'price': '\$510',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    item['price']!,
                    style: const TextStyle(fontSize: 12, color: Colors.black),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
