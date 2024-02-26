import 'package:flutter/material.dart';
import 'package:red_restro/screens/order/order_screen.dart';

class EditOrderForm extends StatefulWidget {
  const EditOrderForm({super.key});

  @override
  State<EditOrderForm> createState() => _EditOrderFormState();
}

class _EditOrderFormState extends State<EditOrderForm> {
  int _currentStep = 0;
  int isTapIndex = -1;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                        radius: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            width: 10,
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
                        ],
                      )
                    ],
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
                        errorText: _formKey.currentState?.validate() == false
                            ? 'Please enter Phone Number'
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Billing Address",
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
                          return 'Please enter Address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "hdgfuyae gauyfgefuy fj ayuefuegyfu",
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
                        errorText: _formKey.currentState?.validate() == false
                            ? 'Please enter Address'
                            : null,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Order Details",
                              style: TextStyle(
                                  color: Colors.grey[800],
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Row(
                              children: [
                                Text("Name",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("Price",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Row(
                              children: [
                                Text("Panner Tikka",
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
                                Spacer(),
                                Text("\$140",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Row(
                              children: [
                                Text("naan",
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  width: 50,
                                ),
                                Text("x3",
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
                                Spacer(),
                                Text("\$30",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            const Row(
                              children: [
                                Text("colo",
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
                                SizedBox(
                                  width: 50,
                                ),
                                Text("x2",
                                    style: TextStyle(
                                      fontSize: 14,
                                    )),
                                Spacer(),
                                Text("\$60",
                                    style: TextStyle(
                                      fontSize: 14,
                                    ))
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Divider(
                              height: 1,
                              color: Colors.grey[400],
                            ),
                            const Row(
                              children: [
                                Text("Total",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                Spacer(),
                                Text("\$230",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 290,
                              height: 250,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5)),
                              child: Image.asset(
                                'assets/images/location.png',
                                fit: BoxFit.cover,
                              ),
                            )
                          ],
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 320,
                    height: 430,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Order Details",
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Stepper(
                          steps: [
                            Step(
                              state: _currentStep == 0
                                  ? StepState.editing
                                  : StepState.complete,
                              isActive: _currentStep == 0,
                              subtitle: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 12),
                              ),
                              title: const Text("Order Deliverd",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              content: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Step(
                              state: _currentStep == 1
                                  ? StepState.editing
                                  : StepState.complete,
                              isActive: _currentStep == 1,
                              subtitle: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 12),
                              ),
                              title: const Text("On Delivery",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              content: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Step(
                              state: _currentStep == 2
                                  ? StepState.editing
                                  : StepState.complete,
                              isActive: _currentStep == 2,
                              subtitle: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 12),
                              ),
                              title: const Text("Payment Succefully",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              content: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                            Step(
                              state: _currentStep == 3
                                  ? StepState.editing
                                  : StepState.complete,
                              isActive: _currentStep == 3,
                              subtitle: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 12),
                              ),
                              title: const Text("Order Created",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              content: const Text(
                                "Sat,23 jul 2020, 01:24pm",
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                          connectorColor: MaterialStatePropertyAll(
                              const Color.fromARGB(255, 239, 108, 0)),
                          onStepTapped: (int newIndex) {
                            setState(() {
                              _currentStep = newIndex;
                            });
                          },
                          currentStep: _currentStep,
                          onStepContinue: () {
                            if (_currentStep != 3) {
                              setState(() {
                                _currentStep += 1;
                              });
                            }
                          },
                          onStepCancel: () {
                            if (_currentStep != 0) {
                              setState(() {
                                _currentStep -= 1;
                              });
                            }
                          },
                        ),
                      ],
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
                                    builder: (context) => const OrderScreen()));
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
                                    builder: (context) => const OrderScreen()));
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
        ));
  }
}
