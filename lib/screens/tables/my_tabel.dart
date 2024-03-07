import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../Products/product_screen.dart';

class TableData {
  final String id;
  final Color color;
  final bool isAvailable;
  final int numberOfSeats;

  const TableData({
    required this.id,
    required this.color,
    this.numberOfSeats = 2,
  }) : isAvailable = color == Colors.blue;
}

class MyTable extends StatefulWidget {
  const MyTable({super.key});

  @override
  State<MyTable> createState() => _MyTableState();
}

class _MyTableState extends State<MyTable> {
  @override
  Widget build(BuildContext context) {
    final List<Color> borderColors = [
      Colors.red, // Reserved
      Colors.green, // Occupied
      Colors.blue, // Available
    ];
    final List<TableData> tables = List.generate(
        30,
        (index) => TableData(
              id: 'T${index + 1}',
              color: [
                const Color.fromARGB(255, 255, 205, 210),
                const Color.fromARGB(255, 200, 230, 201),
                const Color.fromARGB(255, 187, 222, 251),
              ][index % 3],
              numberOfSeats: [2, 4, 8][index % 3],
            ));
    return Material(
      color: Colors.white,
      child: Container(
        height: 500,
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          scrollDirection: Axis.vertical,
          itemCount: tables.length,
          itemBuilder: (context, index) {
            final table = tables[index];
            final borderColor = borderColors[index % 3];
            return GestureDetector(
              onTap: () {
                if (tables[index].color == Color.fromARGB(255, 187, 222, 251)) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductScreen()),
                  );
                }
              },
              child: DottedBorder(
                stackFit: StackFit.expand,
                color: borderColor,
                strokeWidth: 2.0,
                dashPattern: [5, 3, 5, 3], // Increase dots and spaces
                strokeCap: StrokeCap.round, // Circular corners
                radius: Radius.circular(10),
                borderPadding: EdgeInsets.all(1),
                borderType: BorderType.RRect,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: table.color,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        table.id,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Seat's: ${table.numberOfSeats}",
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
