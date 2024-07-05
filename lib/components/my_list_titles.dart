import 'package:flutter/material.dart';

class MyListTile extends StatefulWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;

  const MyListTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 20),
      child: ListTileTheme(
        selectedTileColor: Colors.orange[100],
        child: ListTile(
          leading: Icon(
            widget.icon,
            color: tapped ? Colors.orange : Colors.black,
          ),
          onTap: () {
            setState(() {
              tapped = !tapped;
            });
            widget.onTap?.call();
          },
          title: Text(
            widget.text,
            style: TextStyle(
                color: tapped ? Colors.orange : Colors.grey[700],
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
          tileColor: tapped ? Colors.orange[50] : Colors.white,
        ),
      ),
    );
  }
}
