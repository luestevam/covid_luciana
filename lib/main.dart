import 'dart:async';
import 'package:covid_luciana/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(MaterialApp(
    title: "APP COVID",
    home: MyHomePage(),

    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 2),
        () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Home())));
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:<Widget> [
          Image.asset(
            'assets/mask.png',
          fit: BoxFit.cover),


          SpinKitRipple(color: Colors.red),
        ],
      ),
    );
  }
}
