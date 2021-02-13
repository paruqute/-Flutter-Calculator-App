

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/main.dart';
class Add extends StatefulWidget {
  @override
  _AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();

  int _sum=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Addition",
            style: TextStyle(
                color: Colors.white
            ),),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: fnum,
                decoration: InputDecoration(
                    labelText: "First Number ",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: snum,
                decoration: InputDecoration(
                    labelText: "Second Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                ),
              ),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
                child: RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: (){
                    var getFrstNumber=int.parse(fnum.text);
                    var getSecodNumber=int.parse(snum.text);
                    setState(() {
                      _sum=getFrstNumber+getSecodNumber;
                    });

                    print(getFrstNumber);
                    print(getSecodNumber);
                    print(_sum);
                  },
                  child: Text("Add",
                    style: TextStyle(
                        color: Colors.greenAccent,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Addition",style: TextStyle(
                color: Colors.amber,
                fontSize: 40
              ),),
              Text(_sum.toString(),style: TextStyle(
                fontSize: 40,
                color: Colors.amber
              ),),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
                child: RaisedButton(
                  color: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                  child: Text("Go to Menu",
                    style: TextStyle(

                        color: Colors.greenAccent,
                        fontSize: 20
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

