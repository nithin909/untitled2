import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget {
  TextEditingController passcodecontroller = TextEditingController();
  String Password = "RHIT2022";
  Color col = const Color(0xFFC3C3D5);
  void clearText() {
    passcodecontroller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: col,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
            ),
            Text(
              "RHIT SHIFT 2022",
              style: TextStyle(

                  color: Colors.black87,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter the Passcode",
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextFormField(
                    obscureText: true,
                    obscuringCharacter: '*',
                    controller: passcodecontroller,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter Passcode',
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 20,
                ),
                onPressed: () {
                  if (passcodecontroller.text == "rhit2022") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                    clearText();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: const Text("Enter valid Password"),
                        action: SnackBarAction(
                          label: 'Undo',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    );
                    clearText();
                  }
                },
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "SUBMIT",
                    style: TextStyle(fontSize: 20),
                  ),
                )),
          ],
        ),
      ),
    ));
  }
}
