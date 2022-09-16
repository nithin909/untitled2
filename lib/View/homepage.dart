import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:horizontal_calendar/horizontal_calendar.dart';
import 'package:untitled2/View/addshifts.dart';


class HomePage extends StatelessWidget {
  List Shift = ["Night", "Morning", "Day", "Evening"];
  List Person = ["a", "b", "c", "d"];

  String dt = DateTime.now().toString();




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Addshift()),
            );
          },
              icon: Icon(Icons.add)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {
                (SystemNavigator.pop());
          }, icon: Icon(Icons.power_settings_new)),
        ],

        ),
      body: Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Datecolum(),

            ],
          ),
          SizedBox(height: 35,),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Eployees on Duty",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),

          Container(
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: Shift.length,
              itemBuilder: (c, i) {
                return (Row(
                  children: [
                    Container(
                      color: Colors.blue[100],
                      height: 80,
                      width: 100,
                      child: Center(child: Text(Shift[i],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      color: Colors.pink[100],
                      height: 80,
                      width: 280,
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
        ],
      ),
    );
  }
}


class Datecard extends StatelessWidget{
  var dt = DateTime.now();


  Color col = const Color(0xFF42A5F5);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Card(
          color: col,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(DateUtils.dateOnly(dt).toString()),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class Datecolum extends StatefulWidget{
  @override
  State<Datecolum> createState() => _DatecolumState();
}

class _DatecolumState extends State<Datecolum> {


  @override
  Widget build(BuildContext context) {
     return Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(10.0),
        child:HorizontalCalendar(
          initialDate: DateTime(2001),
          showMonth: true,
          date: DateTime.now(),
          textColor: Colors.black45,
          backgroundColor: Colors.white,
          selectedColor: Colors.grey[500],
          onDateSelected: (date) => print(
            date.toString(),
          ),
        ),
     );
     }
  }


