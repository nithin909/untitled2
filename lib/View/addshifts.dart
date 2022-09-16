import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Addshift extends StatelessWidget{



  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _idcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Add  Shift"),

          ),

          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text("Enter employee details",style: TextStyle(fontSize: 18),),
              ),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _idcontroller,
                  decoration: InputDecoration(
                      label: Text("Enter employee ID"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )
                  ),
                ),
              ),
             // SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _namecontroller,
                  decoration: InputDecoration(
                    label: Text("Enter employee name"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    )
                  ),
                ),
              ),



              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Dlist(),

                  SizedBox(width: 15,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      //fixedSize: const Size(20, 8),
                      shape: StadiumBorder(),
                      elevation: 20.0
                    ),
                      onPressed: (){},
                      child: Text("Submit")
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}


class Dlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(15.0),
     child: DropdownButton<String>(
       iconSize: 35,
       hint: Text("Select Shift"),
       items: <String>['Night', 'Morning', 'Day', 'Evening'].map((String value) {
         return DropdownMenuItem<String>(
           value: value,
           child: Text(value),
         );
       }).toList(),
       onChanged: (_) {},
     ),
   );
  }

}
