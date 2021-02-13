import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/main.dart';
class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  TextEditingController fnum=TextEditingController();
  TextEditingController snum=TextEditingController();
  int _product=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Product",
            style: TextStyle(
                color: Colors.black
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
                    border:OutlineInputBorder(
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
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: (){
                    var getFirstNumber=int.parse(fnum.text);
                    var getSecondNumber=int.parse(snum.text);
                    setState(() {
                      _product=getFirstNumber*getSecondNumber;
                    });

                    print(_product);
                  },
                  child: Text("Product",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text("Product equal to",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 40
              ),),
              Text(_product.toString(),style: TextStyle(
                color: Colors.black,
                fontSize: 40
              ),),
              SizedBox(height: 20,),
              SizedBox(height: 50,width: double.infinity,
                child: RaisedButton(
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
                  },
                  child: Text("Go to Menu",
                    style: TextStyle(

                        color: Colors.black,
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
