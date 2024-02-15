import 'package:flutter/material.dart';

class MyReport extends StatefulWidget {
  const MyReport({super.key});

  @override
  State<MyReport> createState() => _MyReportState();
}

class _MyReportState extends State<MyReport> {
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Report",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 450,
              height: 1,
              color: Colors.grey[800],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "From:  ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 130,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter detail';
                      }
                      return null;
                    },
                    cursorColor: Colors.grey[800],
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "01-01-2024",
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
                          ? 'Please enter detail'
                          : null,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "To:      ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 130,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Number detail';
                      }
                      return null;
                    },
                    cursorColor: Colors.grey[800],
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "07-01-2024",
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
                          ? 'Please Number detail'
                          : null,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Time:  ",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 130,
                  height: 60,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Number detail';
                      }
                      return null;
                    },
                    cursorColor: Colors.grey[800],
                    cursorHeight: 30,
                    decoration: InputDecoration(
                      fillColor: Colors.grey[300],
                      filled: true,
                      hintText: "7 days",
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
                          ? 'Please Number detail'
                          : null,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
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
                    width: 120,
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
                SizedBox(
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
                    width: 120,
                    height: 30,
                    decoration: BoxDecoration(
                        color: isTapIndex == 0
                            ? Colors.orange[800]
                            : Colors.orange[100],
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Download",
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
