import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddesign_app/FoodItem.dart';

class Dishes extends StatefulWidget {
  @override
  _DishesState createState() => _DishesState();
}

class _DishesState extends State<Dishes> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Color.fromRGBO(242, 169, 3, 1),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: Icon(
                        Icons.restaurant_menu,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Fast Food',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 33,
                        color: Colors.black,
                      ),
                    ),
                    Container(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/logo.png'),
                        radius: 25,
                      ),
                    ),
                  ],
                ),
              ),

            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Text(
                        'Polish',
                        style: TextStyle(
                          fontSize: 20,
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Text(
                        'Italian',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Text(
                        'Peruvian',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      FoodItem(
                        title: 'Grass Fed Beef ',
                        subtitle: 'FoodServices',
                        pic: AssetImage('images/food1.png'),
                        price: 25.00,
                        info: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum odio sed mattis dignissim. ',
                      ),
                      SizedBox(width: 20,),
                      FoodItem(
                        title: 'Grass Fed Beef ',
                        subtitle: 'FoodServices',
                        pic: AssetImage('images/food2.png'),
                        price: 25.00,
                        info: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum odio sed mattis dignissim. ',
                      ),
                      SizedBox(width: 20,),
                      FoodItem(
                        title: 'Grass Fed Beef ',
                        subtitle: 'FoodServices',
                        pic: AssetImage('images/food3.png'),
                        price: 25.00,
                        info: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam dictum odio sed mattis dignissim. ',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



