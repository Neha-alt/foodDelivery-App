import 'package:flutter/material.dart';

class FoodItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final AssetImage pic;
  final double price;
  final String info;
  FoodItem({this.title, this.subtitle, this.pic, this.price, this.info});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      margin: EdgeInsets.all(10),
      child: Card(
        color: Colors.white,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Container(
                height: 250,
                width: 250,
                child: Image(
                  image:pic,
                ),
              ),
              Text(
                '\$$price',
                style: TextStyle(fontSize: 30,color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Container(
                width: 300,
                child: Text(
                  info,
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color:Color.fromRGBO(242,169,3,1),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 45, right: 45, top: 15, bottom: 15),
                  child: Text(
                    'Buy',
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
      ),
    );
  }
}
