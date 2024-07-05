import 'package:flutter/material.dart';

import 'product_screen.dart';

class AddNewVerient extends StatefulWidget {
  const AddNewVerient({super.key});

  @override
  State<AddNewVerient> createState() => _AddNewVerientState();
}

class _AddNewVerientState extends State<AddNewVerient> {
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Option",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 10,
                            width: 10,
                            child: Checkbox(
                              activeColor: Colors.orange[100],
                              value: _isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  _isChecked = newValue!;
                                });
                              },
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            "This product has option like size",
                            style: TextStyle(
                                color: Colors.grey[800], fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.grey[800],
                      height: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Size",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 60,
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Small",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Medium",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.orange[800],
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              "Large",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 350,
                      height: 100,
                      child: TextFormField(
                        // controller: controller.emailController.value,
                        cursorColor: Colors.black,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Description';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.orange[50],
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formKey.currentState?.validate() == false
                                  ? Colors.red
                                  : const Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formKey.currentState?.validate() == false
                                  ? Colors.red
                                  : const Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorText: _formKey.currentState?.validate() == false
                              ? 'Please enter Description'
                              : null,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isTapIndex = -1;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProductScreen()));
                            });
                          },
                          child: Container(
                            width: 140,
                            height: 50,
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
                                    color: isTapIndex == -1
                                        ? Colors.white
                                        : Colors.black,
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const ProductScreen()));
                            });
                          },
                          child: Container(
                            width: 140,
                            height: 50,
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
                                    color: isTapIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
