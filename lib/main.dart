import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddesign_app/MenuPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: HomePage(),
      theme: ThemeData(
        textTheme: TextTheme(
          headline2:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          headline3:TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242,169,3,1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network('https://www.mccain.com/images/like-to-know-plate.png'),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: RichText(
              text:  TextSpan(
                text: "WELCOME\nTO\nFOOD",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
                return MenuPage();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20,left: 150),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                  ),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.black,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios,size: 35,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
