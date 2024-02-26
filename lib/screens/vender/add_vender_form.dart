import 'package:flutter/material.dart';
import 'package:red_restro/screens/vender/vender_page.dart';

class AddVenderForm extends StatefulWidget {
  const AddVenderForm({super.key});

  @override
  State<AddVenderForm> createState() => _AddVenderFormState();
}

class _AddVenderFormState extends State<AddVenderForm> {
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                            radius: 30,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Vender Id ",
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                height: 50,
                                width: 160,
                                child: TextFormField(
                                  // controller: controller.emailController.value,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter Name';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: "0011225",
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    errorText:
                                        _formKey.currentState?.validate() ==
                                                false
                                            ? 'Please enter name'
                                            : null,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Text(
                        "Vender Name",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "xyz",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter name'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Owner Name",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "xyz",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter name'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email ID",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "xyz@gmail.com",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Email'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Phone Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "1234567891",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Phone Number'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Address';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "hdgfuyae gauyfgefuy fj ayuefuegyfu",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Address'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Vendeor type",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter vender type';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "Food Supplier",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter food supplier'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "GST Number",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter GST Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "78JHDGFY8976EGIUY89",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter GST Number'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Document Number",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Document Number';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "78JHDGFY8976EGIUY89",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Document Number'
                                    : null,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Document Image1",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "(PNG, JPEG)",
                            style: TextStyle(
                              color: Colors.grey[500],
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isTapIndex = -1;
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VenderPage()));
                              });
                            },
                            child: Container(
                              width: 110,
                              height: 40,
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
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => VenderPage()));
                              });
                            },
                            child: Container(
                              width: 110,
                              height: 40,
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
            )));
  }
}
