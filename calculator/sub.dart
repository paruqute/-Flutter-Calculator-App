
import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/main.dart';


class Sub extends StatefulWidget {
  @override
  _SubState createState() => _SubState();
}

class _SubState extends State<Sub> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  int _minus=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Subtraction",
            style: TextStyle(
                color: Colors.amber
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
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
                    var getFirstNumber=int.parse(fnum.text);
                    var getSecondNumber=int.parse(snum.text);
                    setState(() {
                      _minus = getFirstNumber- getSecondNumber;
                    });

                    print(_minus);

                  },
                  child: Text("Subtract",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20
                    ),),
                ),
              ),
              SizedBox(height: 20,),
              Text("Subtraction=",
              style: TextStyle(
                fontSize: 30
              ),),
              Text(_minus.toString(),style: TextStyle(
                fontSize: 40
              ),),
              SizedBox(height: 20,),
              SizedBox(height: 50, width: double.infinity,
                child:RaisedButton(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                  child: Text("Go to Menu",
                    style: TextStyle(
                        color: Colors.amber,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
