import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
         backgroundColor: Colors.red[900],
      ),
      body: Container (
        margin:EdgeInsets.fromLTRB(20,10,0,0),

        child:Column(
          children: <Widget> [
            CircleAvatar(
              radius:50.0,
              backgroundImage: AssetImage('images/bugger.jpg'),

            ),
            Text("Akanang David I.",
            style: TextStyle(
              color:Colors.red[900],
              fontWeight:FontWeight.bold,
              fontSize: 25.0,
            ),

            ),


            Text("</Programmer>",
              style:TextStyle(
                letterSpacing:2.5,
                fontSize: 20.0,

              ),
            ),

//            Text("<CEO DavezHUB/>",
//              style:TextStyle(
//                letterSpacing:2.5,
//                fontSize: 20.0,
//                color:Colors.red[900],
//
//              ),
//            ),

            Container(
              margin:EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              color: Colors.green[900],
              padding:EdgeInsets.all(10.0),
              child:Row(
                children:<Widget>[
                  Icon (
                    Icons.phone,
                    color:Colors.white,
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Text("+234 8107701730",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0,
                    ),
                  ),

                ],

              ),

            ),
            Container(
              margin:EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
              color: Colors.green[900],
              padding:EdgeInsets.all(9.0),
              child:Row(
                children:<Widget>[
                  Icon (
                    Icons.email,
                    color:Colors.white,
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Text("davidakanang@gmail.com",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0,
                    ),
                  ),

                ],

              ),

            ),

            SizedBox(
              width:10.0,
            ),
            CircleAvatar(

              radius:50.0,
              backgroundImage: AssetImage('images/tra.jpg'),
            ),

            Text("Bournaventure Daniel",
              style:TextStyle(
                letterSpacing:2.5,
                fontSize: 20.0,
                color:Colors.red[900],
                fontWeight:FontWeight.bold,

              ),
            ),

            Text("System Analyst",
              style:TextStyle(
                letterSpacing:2.5,
                fontSize: 20.0,

              ),
            ),




            Container(
              margin:EdgeInsets.symmetric(vertical: 0.0, horizontal: 25.0),
            color: Colors.green[900],
            padding:EdgeInsets.all(10.0),
            child:Row(
              children:<Widget>[
                Icon (
                    Icons.phone,
                  color:Colors.white,
                ),
                SizedBox(
                  width:10.0,
                ),
                Text("+234 8147073832",
                  style: TextStyle(
                    color:Colors.white,
                    fontSize: 20.0,
                  ),
                ),

              ],

            ),

            ),
            Container(
              margin:EdgeInsets.symmetric(vertical: 5.0, horizontal: 25.0),
              color: Colors.green[900],
              padding:EdgeInsets.all(10.0),
              child:Row(
                children:<Widget>[
                  Icon (
                    Icons.email,
                    color:Colors.white,
                  ),
                  SizedBox(
                    width:10.0,
                  ),
                  Text("tetra@gmail.com",
                    style: TextStyle(
                      color:Colors.white,
                      fontSize: 20.0,
                    ),
                  ),

                ],

              ),

            ),
          ]

        ),




      ),




    );
  }
}