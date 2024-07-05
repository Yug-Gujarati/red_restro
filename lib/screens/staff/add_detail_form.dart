import 'package:flutter/material.dart';
import 'package:red_restro/screens/staff/staff_screen.dart';

class AddDetailForm extends StatefulWidget {
  const AddDetailForm({super.key});

  @override
  State<AddDetailForm> createState() => _AddDetailFormState();
}

class _AddDetailFormState extends State<AddDetailForm> {
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedGender = 'Male';
  String selectedPotision = 'Booking Manager';
  List<String> genders = ['Male', 'Female', 'Others'];
  List<String> potisions = ['Booking Manager', 'Waiter', 'Kitchen Manager'];

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
                      Text(
                        "Enter Potision",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: DropdownButtonFormField<String>(
                          key: const ValueKey('potision'),
                          value: selectedPotision,
                          items: potisions
                              .map((potision) => DropdownMenuItem<String>(
                                    value: potision,
                                    child: Text(potision),
                                  ))
                              .toList(),
                          onChanged: (value) =>
                              setState(() => selectedPotision = value!),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false &&
                                        selectedGender.isEmpty
                                    ? 'Please select Potision'
                                    : null,
                          ),
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please select Potision'
                              : null,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "First Name",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter First Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "xyz",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Last Name",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Last Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "abc",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Last Name'
                                    : null,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Email ID",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Create Password",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Passward';
                            }
                            return null;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "12345678",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Password'
                                    : null,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
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
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Birth Date",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: TextFormField(
                          // controller: controller.emailController.value,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Birth Date';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            hintText: "10/2/2001",
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false
                                    ? 'Please enter Birth Date'
                                    : null,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Gender",
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 60,
                        width: 500,
                        child: DropdownButtonFormField<String>(
                          key: const ValueKey('gender'),
                          value: selectedGender,
                          items: genders
                              .map((gender) => DropdownMenuItem<String>(
                                    value: gender,
                                    child: Text(gender),
                                  ))
                              .toList(),
                          onChanged: (value) =>
                              setState(() => selectedGender = value!),
                          decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            errorText:
                                _formKey.currentState?.validate() == false &&
                                        selectedGender.isEmpty
                                    ? 'Please select Gender'
                                    : null,
                          ),
                          validator: (value) => value == null || value.isEmpty
                              ? 'Please select Gender'
                              : null,
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
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const StaffScreen()));
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
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                isTapIndex = 0;
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const StaffScreen()));
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
