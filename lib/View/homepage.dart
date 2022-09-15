import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  List Shift = ["Night", "Morning", "Day", "Evening"];
  List Person = ["a", "b", "c", "d"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {
                (SystemNavigator.pop());
          }, icon: Icon(Icons.power_settings_new)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView.separated(
            itemCount: Shift.length,
            itemBuilder: (c, i) {
              return (Row(
                children: [
                  Container(
                    color: Colors.blue[100],
                    height: 50,
                    width: 100,
                    child: Center(child: Text(Shift[i],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    color: Colors.pink[100],
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(Person[i]),
                    ),
                  ),
                ],
              ));
            },
            separatorBuilder: (BuildContext context, int index) {
              return Divider();
            },
          ),
        ),
      ),
    );
  }
}
