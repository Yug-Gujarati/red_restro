import 'package:flutter/material.dart';

class AddTable extends StatefulWidget {
  const AddTable({super.key});

  @override
  State<AddTable> createState() => _AddTableState();
}

class _AddTableState extends State<AddTable> {
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        height: 250,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Table Datail",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 450,
              height: 1,
              color: Colors.grey[800],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Table No: ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter table no';
                      }
                      return null;
                    },
                    cursorColor: Colors.grey[800],
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "25",
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _formKey.currentState?.validate() == false
                              ? Colors.red
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _formKey.currentState?.validate() == false
                              ? Colors.red
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      errorText: _formKey.currentState?.validate() == false
                          ? 'Please enter table no'
                          : null,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Table Size: ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 100,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Number table size';
                      }
                      return null;
                    },
                    cursorColor: Colors.grey[800],
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "000",
                      hintStyle:
                          TextStyle(color: Colors.grey[800], fontSize: 20),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _formKey.currentState?.validate() == false
                              ? Colors.red
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: _formKey.currentState?.validate() == false
                              ? Colors.red
                              : Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      errorText: _formKey.currentState?.validate() == false
                          ? 'Please Number table size'
                          : null,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapIndex = -1;
                      Navigator.of(context).pop();
                    });
                  },
                  child: Container(
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                        color: isTapIndex == -1
                            ? Colors.orange[800]
                            : Colors.orange[100],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Cancle",
                        style: TextStyle(
                            fontSize: 20,
                            color:
                                isTapIndex == -1 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isTapIndex = 0;
                      Navigator.of(context).pop();
                    });
                  },
                  child: Container(
                    width: 110,
                    height: 30,
                    decoration: BoxDecoration(
                        color: isTapIndex == 0
                            ? Colors.orange[800]
                            : Colors.orange[100],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Save",
                        style: TextStyle(
                            fontSize: 20,
                            color:
                                isTapIndex == 0 ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
