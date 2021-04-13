import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            automaticallyImplyLeading: false,
            title: Text(
              "Covid-19",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 34, 67),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 251, 251, 253),
            elevation: 3.0,
          ),
        ),
        body: Center(
          child: Text('Fist Screen', style: TextStyle(fontSize: 18.0)),
        ));
  }
}
