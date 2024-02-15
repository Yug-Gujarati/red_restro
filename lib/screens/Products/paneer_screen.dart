import 'package:flutter/material.dart';

class PaneerScreen extends StatefulWidget {
  const PaneerScreen({super.key});

  @override
  State<PaneerScreen> createState() => _PaneerScreenState();
}

class _PaneerScreenState extends State<PaneerScreen> {
  List<Map<String, String>> items = [
    {
      'name': 'Aloo paneer',
      'price': '\$510',
    },
    {
      'name': 'Panner kadhai',
      'price': '\$510',
    },
    {
      'name': 'Matar panner',
      'price': '\$510',
    },
    {
      'name': 'Aloo paneer',
      'price': '\$510',
    },
    {
      'name': 'Panner kadhai',
      'price': '\$510',
    },
    {
      'name': 'Matar panner',
      'price': '\$510',
    },
    {
      'name': 'Chicken Burger',
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
