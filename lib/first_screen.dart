import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              "Covid-19",
              style: TextStyle(
                color: Color.fromARGB(255, 30, 34, 67),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Color.fromARGB(255, 251, 251, 253),
            elevation: 3.0,
          ),
          ),
        body: _buildListView(),

                  );

  }

  ListView _buildListView() {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10),
      itemCount: 5,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text('The List Item #$index'),
          subtitle: Text('subtitulo'),
          leading: Icon(Icons.thumb_up),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}
