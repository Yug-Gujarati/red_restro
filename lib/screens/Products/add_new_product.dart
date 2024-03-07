import 'package:flutter/material.dart';
import 'package:red_restro/screens/Products/product_screen.dart';

class AddNewProduct extends StatefulWidget {
  const AddNewProduct({super.key});

  @override
  State<AddNewProduct> createState() => _AddNewProductState();
}

class _AddNewProductState extends State<AddNewProduct> {
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
                    Text(
                      "Product name",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        // controller: controller.emailController.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Name';
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
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorText: _formKey.currentState?.validate() == false
                              ? 'Please enter product name'
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        // controller: controller.emailController.value,
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
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formKey.currentState?.validate() == false
                                  ? Colors.red
                                  : Color.fromARGB(255, 255, 243, 224),
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
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Price",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        // controller: controller.emailController.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Price';
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
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formKey.currentState?.validate() == false
                                  ? Colors.red
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorText: _formKey.currentState?.validate() == false
                              ? 'Please enter Price'
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Discountable",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 10,
                          width: 10,
                          child: Checkbox(
                            activeColor: Colors.green[100],
                            value: _isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                _isChecked = newValue!;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 350,
                      height: 60,
                      child: TextFormField(
                        // controller: controller.emailController.value,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter Detail';
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
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: _formKey.currentState?.validate() == false
                                  ? Colors.red
                                  : Color.fromARGB(255, 255, 243, 224),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          errorText: _formKey.currentState?.validate() == false
                              ? 'Please enter Detail'
                              : null,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Pizaa",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Burger",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(
                            child: Text(
                              "Coke",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text(
                          "Panner",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
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
                                      builder: (context) => ProductScreen()));
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
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isTapIndex = 0;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProductScreen()));
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
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
