

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'homepage.dart';

class LoginPage extends StatelessWidget{

  TextEditingController passcodecontroller = TextEditingController();
  String Password = "RHIT2022";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              children:  [
                SizedBox(height: 20,),
                Text("rhit2022",
                  style: TextStyle(color: Colors.blueGrey,fontSize: 40,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Text("Enter the Passcode",style: TextStyle(color: Colors.black,fontSize: 19),),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      )  ,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: TextFormField(

                        controller: passcodecontroller,

                        decoration: InputDecoration(
                          border: InputBorder.none,
                            hintText: 'Enter Passcode',
                        ),

                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                    onPressed: (){
                      if(passcodecontroller.text == "rhit2022") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      }
                      else{
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

                      }
                    },
                    child: Text("SUBMIT")
                ),
              ],
            ),
          ),
        )
    );
  }

}