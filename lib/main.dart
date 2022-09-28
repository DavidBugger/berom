import 'dart:async';
import 'package:flutter/material.dart';
import 'package:berom/about_page.dart';
import 'package:berom/privacy_page.dart';
import 'package:berom/home.dart';
import'package:berom/history.dart';
import'package:berom/learn.dart';
import'package:berom/about.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Berom',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnimatedSplashScreen(
          splash:Image(
            image:AssetImage('images/img4.jpeg'),
          ),
          duration:3000,
          backgroundColor:Colors.red,
          splashTransition: SplashTransition.fadeTransition,
           nextScreen: SecondScreen(),),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    SecondScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,



    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Learn Berom")),

      drawer: Drawer(
        elevation: 10.0,



        child: ListView(
//          padding: EdgeInsets.zero,


          children: [
            ListTile(
              title: const Text("Homepage",
                style: TextStyle(
                  color:Colors.green,
                  fontSize: 17.0,
                ),

              ),

              leading: const Icon(Icons.home,
                color:Colors.red,
                size: 30.0,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              title: const Text("History of Berom People",
                style: TextStyle(
                  color:Colors.green,
                  fontSize: 17.0,
                ),

              ),
              leading: const Icon(Icons.adjust_rounded,
                color:Colors.red,
                size: 30.0,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
            ),


            ListTile(
              title: const Text("ABCD in Berom",
                style: TextStyle(
                  color:Colors.green,
                  fontSize: 17.0,
                ),
              ),
              leading: const Icon(Icons.person,
                color:Colors.red,
                size: 30.0,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => learnBerom()),
                );
              },
            ),

            ListTile(
              title: const Text("Berom Names",
                style: TextStyle(
                  color:Colors.green,
                  fontSize: 17.0,
                ),
              ),
              leading: const Icon(Icons.house,
                color:Colors.red,
                size: 30.0,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewPage()),
                );
              },
            ),

            ListTile(
              title: const Text("About Us",
                style: TextStyle(
                  color:Colors.green,
                  fontSize: 17.0,
                ),
              ),
              leading: const Icon(Icons.info,
                color:Colors.red,
                size: 30.0,
              ),

              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AboutPage()),
                );
              },
            ),
//            ListTile(
//              title: const Text("Exit"),
//              leading: const Icon(Icons.exit_to_app),
//              onTap: () {
//                Navigator.pop(context);
//              },
//            ),
          ],
        ),
      ),
      body:Container(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.stretch,

          children: <Widget>[
            Container(
//              width: 300.0,
//              height:300.0,
                padding:EdgeInsets.all(20.0),
                margin:EdgeInsets.fromLTRB(0, 0, 0, 20.0),
//                color:Colors.green[900],
                child:Image(
                  image:AssetImage('images/img4.jpeg'),
                )

            ),


            Container(
//                padding:EdgeInsets.all(30.0),
//                margin:EdgeInsets.all(20.0),
              padding:EdgeInsets.all(10.0),
              margin:EdgeInsets.fromLTRB(0, 0, 0, 5.0),
              width: 400.0,
              height:300.0,
              color:Colors.red[900],

              child:Text("Welcome to Learn Berom, is an app that teaches Berom dialect to both young and old people, primarily promoting and harnessing the dialect in both homes and diaspora \n 'Wurom Asi Wurom!'",

                style:TextStyle(

                  fontSize: 20.0,
                  color:Colors.white,




                ),
              ),

            ),




          ],
        ),



      ),





//      Text(
//        'This is the body of the app ',
//        style:TextStyle(
//          fontSize: 20.0,


    );
  }
}




