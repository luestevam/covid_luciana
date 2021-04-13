import 'package:flutter/material.dart';
import 'continents.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

class Home extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(
                  'Loading data...',
                  style: TextStyle(fontSize: 22.0),
                ),
              );
            } else {
              return Container(

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListView.builder(
                        padding: EdgeInsets.only(top: 20),
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          Continentes data = snapshot.data[index];

                          return ListTile(
                            title: Text(
                              data.continent,
                              style: TextStyle(
                                  fontSize: 19.0, fontWeight: FontWeight.bold),),
                              subtitle: Container(
                              child: Row(
                                children:<Widget> [
                                  Text(data.deaths.toString(),
                                    style: TextStyle(
                                    color: Colors.blueAccent,
                                    )
                                    )
                                ],
                              ),
                                
                              )

                          );
                        })
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

Future<List<Continentes>> getData() async {
  String url = "https://disease.sh/v3/covid-19/continents?yesterday=true";

  http.Response response = await http.get(url);

  return continentesFromJson(response.body);
}
