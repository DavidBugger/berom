import 'package:flutter/material.dart';



class PolicyPage extends StatelessWidget {
  const PolicyPage({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History of Berom'),
         backgroundColor: Colors.green[900],
      ),
      body: Container(

//        margin:EdgeInsets.all(30.0),
        child:Column(

//          mainAxisAlignment:MainAxisAlignment.center,
        crossAxisAlignment:CrossAxisAlignment.stretch,
          children: <Widget> [
            Container(
//              width: 300.0,
//              height:300.0,
              padding:EdgeInsets.all(20.0),
              margin:EdgeInsets.fromLTRB(0, 0, 0, 20.0),
              color:Colors.green[900],
              child:Image(
                image:AssetImage('images/img4.jpeg'),
              )

            ),

            Container(
//              width: 300.0,
//              height:300.0,
              padding:EdgeInsets.all(20.0),
//              margin:EdgeInsets.fromLTRB(0, 0, 0, 20.0),
              color:Colors.green[900],
              child: Text(
                "History of Berom began in the year 2000 where the people to Jos",

                style: TextStyle(
                  color:Colors.white,
                  fontSize: 20.0,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.bold,
                ),

              ),

            ),

            Container(
              padding:EdgeInsets.all(20.0),
              width:100.0,
              height:800.0,
              color:Colors.red[900],


                child: Text(
                "The Berom (sometimes also spelt as Birom) is the largest autochthonous ethnic group in Plateau State, central Nigeria.Covering about four local government areas, which include Jos North, Jos South, Barkin Ladi (Gwol) and Riyom, Berom are also found in some southern Kaduna State local government areas."
                    "The Berom speak the Berom language, which belongs to the Plateau branch of Benue–Congo, a subfamily of the large Niger–Congo language family. It is not related to the Hausa language (which belongs to the Afro-Asiatic family) or other Afro-Asiatic languages of Plateau State, which are Chadic languages. ",
              style: TextStyle(
                color: Colors.white,

              ),
              ),
            ),

          ],
        ),


      ),
//      Text(
//        'This is the about page. Write your policy information here',
//        style: Theme.of(context).textTheme.headline6,
//
//      ),
    );
  }
}