import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  late List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Batin jek e elen Berom"),
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('data_repo/berom.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("image: " + new_data[index]['image']),
                            Text(
                                "Berom_name: " + new_data[index]['Berom_name']),
                            Text("English_name: " +
                                new_data[index]['English_name']),
                            Text("Description: " +
                                new_data[index]['Description']),
                          ],
                        ),
                      );
                    },
                    itemCount: new_data == null ? 0 : new_data.length,
                  );
                }),
          ),
        ));
  }
}
