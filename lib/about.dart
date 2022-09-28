import 'dart:convert';

import 'package:flutter/material.dart';



class About extends StatefulWidget {
  @override
  MyAppState createState() => new MyAppState();
}

class MyAppState extends State<About> {
  late List data;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About Developers"),
          backgroundColor: Colors.red[900],
        ),
        body: Container(
          child: Center(
            // Use future builder and DefaultAssetBundle to load the local JSON file
            child: FutureBuilder(
                future: DefaultAssetBundle.of(context)
                    .loadString('data_repo/about.json'),
                builder: (context, snapshot) {
                  // Decode the JSON
                  var new_data = json.decode(snapshot.data.toString());

                  return ListView.builder(
                    // Build the ListView
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        elevation: 8,
                        shadowColor: Colors.black,
                        margin: EdgeInsets.all(20),
                        shape:  OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.white)
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Image(
                              image:AssetImage(
                                new_data[index]['image'],

                              ),
                            ),

//                            Text("image: " + new_data[index]['image']),
                            Text(
                              "Name: " + new_data[index]['Name'],
                              style:TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'Roboto',
                                color:Colors.green,
                                fontWeight:FontWeight.bold,
                              ),
                            ),
                            Text("Description: " +
                                new_data[index]['Description'],
                              style:TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'GideonRoman',
                                fontWeight:FontWeight.bold,
                                color:Colors.red,
                              ),
                            ),
                            Text("Facebook Username: " +
                                new_data[index]['Facebook username'],
                              style:TextStyle(

                                fontSize: 20.0,
                                color:Colors.green,


                              ),


                            ),
                            Text("Whatsapp: " +
                                new_data[index][''],
                              style:TextStyle(

                                fontSize: 20.0,
                                color:Colors.green,


                              ),


                            ),
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