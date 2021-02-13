

import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/main.dart';
class Division extends StatefulWidget {
    @override
  _DivisionState createState() => _DivisionState();
}

class _DivisionState extends State<Division> {

  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  double _div=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Division",
            style: TextStyle(
                color: Colors.amber
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child:Column(
            children: [
              SizedBox(height: 20,),
              TextField(
                controller: fnum,
                decoration: InputDecoration(
                    labelText: "First Number",
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
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: (){

                    var getFirstNumber = double.parse(fnum.text);
                    var getSecondNumber=double.parse(snum.text);


                    setState(() {
                      _div=getFirstNumber/getSecondNumber;
                    });
                    print(_div);
                  },
                  child: Text("Division",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20
                    ),
                  ),
                ),

              ),
               SizedBox(height: 20,),
               Text("Division",
               style: TextStyle(
                 color: Colors.black,
                 fontSize: 50
               ),),

               Text(_div.toString(),style: TextStyle(
                 fontSize: 50
               ),),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
                child: RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),

                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                  child: Text("Go to Menu",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20
                    ),
                  ),
                ),
              )
            ],
          ) ,
        ),
      ),
    );
  }
}


