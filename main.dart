import 'package:flutter/material.dart';
import 'package:flutter_calculator_app/calculator/add.dart';
import 'package:flutter_calculator_app/calculator/division.dart';
import 'package:flutter_calculator_app/calculator/menu.dart';
import 'package:flutter_calculator_app/calculator/product.dart';
import 'package:flutter_calculator_app/calculator/sub.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Calculator App",
          style: TextStyle(
            color: Colors.amber
          ),
          ),
        ),
        body:MenuScreen(),
      ),
    );
  }
}
