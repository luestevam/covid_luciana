import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class DetailContinents extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('tabs'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget> [
              Text('Detelhes'),
              Text('Paises')

            ],
          ),
        ),
      ),

    );
  }
}
