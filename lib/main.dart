import 'dart:async';
import 'package:covid_luciana/screens/countries_details.dart';
import 'package:covid_luciana/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'dados/countries.dart';

void main() {
  runApp(MaterialApp(
    title: "APP COVID",
    theme: ThemeData(
         primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 4, 126, 141)
    ),


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
        () => Navigator.push(context, MaterialPageRoute(builder: (context)=> CountriesDetails())));
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


          SpinKitRipple(color: Colors.transparent),
        ],
      ),
    );
  }
}
