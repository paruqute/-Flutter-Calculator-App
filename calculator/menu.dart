import 'package:flutter_calculator_app/calculator/division.dart';



import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/calculator/add.dart';
import 'package:flutter_calculator_app/calculator/product.dart';
import 'package:flutter_calculator_app/calculator/sub.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      child:Column(
        children: [
          Text("MENU",style: TextStyle(
            fontSize: 30,

            color: Colors.black,

          ),),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
          child: RaisedButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Add()));
            },
          child: Text("Addition",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20
          ),
          ),
          ),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
          child: RaisedButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),
            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sub()));
            },
          child: Text("Subtraction",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20
          ),
          ),
          ),
          ),
          SizedBox(height: 20,),
          SizedBox(
            height: 50,
            width: double.infinity,

            child: RaisedButton(
              color: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),

              onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (context)=>Product()));
              },
            child: Text("Product",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 20
            ),
            ),
            ),
          ),
          SizedBox(height: 20,),
          SizedBox(height: 50,width: double.infinity,
          child: RaisedButton(
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)
            ),

            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>Division()));
            },
          child: Text("Division",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 20
          ),
          ),
          ),
          )
        ],
      ) ,
    );
  }
}
