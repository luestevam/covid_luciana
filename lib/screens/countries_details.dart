import 'package:covid_luciana/dados/countries.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;

class CountriesDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Paises'),
      ),
      body: SingleChildScrollView(
        child: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text(
                  'Loading data... ',
                  style: TextStyle(fontSize: 22.0),
                ),
              );
            } else {
              return Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    ListView.builder(
                      shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          Countries data = snapshot.data[index];
                          return ListTile(
                            title: Text(data.country, style: TextStyle(
                                fontSize: 19.0,
                                fontWeight: FontWeight.bold),),
                          );

                        }
                        ),
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

Future<List<Countries>> getData() async {
  String url = "https://coronavirus-19-api.herokuapp.com/countries";

  http.Response response = await http.get(url);

  return countriesFromJson(response.body);
}
