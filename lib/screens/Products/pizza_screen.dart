import 'package:flutter/material.dart';

class PizzaScreen extends StatefulWidget {
  const PizzaScreen({super.key});

  @override
  State<PizzaScreen> createState() => _PizzaScreenState();
}

class _PizzaScreenState extends State<PizzaScreen> {
  List<Map<String, String>> items = [
    {
      'name': 'Extra chees pizza',
      'price': '\$510',
    },
    {
      'name': 'Tomato pizza',
      'price': '\$510',
    },
    {
      'name': 'Margherita pizza',
      'price': '\$510',
    },
    {
      'name': 'Veggie pizza',
      'price': '\$510',
    },
    {
      'name': 'Meat pizza',
      'price': '\$510',
    },
    {
      'name': 'BBQ chicken pizza',
      'price': '\$510',
    },
    {
      'name': 'Pepperoni pizza',
      'price': '\$510',
    },
    {
      'name': 'Chees bust',
      'price': '\$510',
    },
    {
      'name': 'Chees pizza',
      'price': '\$510',
    },
    {
      'name': 'Hawaian pizza',
      'price': '\$510',
    },
    {
      'name': 'Mashroom pizza',
      'price': '\$510',
    },
    {
      'name': 'Extra chees pizza',
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
