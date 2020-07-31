import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fooddesign_app/Dishes.dart';
//
class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentPage = 0;
  final _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  List<Widget> _buildPageIndicator(){
    List<Widget> list = [];
    for(int i=0;i<_numPages;i++){
      list.add(i==_currentPage ? _indicator(true):_indicator(false));
    }
    return list;
}
Widget _indicator(bool isActive){
    return AnimatedContainer(
        duration: Duration(milliseconds: 150),
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        height: 8.0,
        width: isActive ? 10.0 : 10.0,
        decoration: BoxDecoration(
        color: isActive ? Colors.yellowAccent :Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        )
    );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 760,
            child: PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
               Stack(
                 children: [
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return Dishes();
                       }));
                     },
                     child: Container(
                       height: 550,
                       child: Image(
                         image:AssetImage('images/dish.jpg'),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                   Positioned(
                     top: 480,
                     left: 130,
                     child: Text(
                       'Food in\nyour area',
                       textAlign: TextAlign.center,
                       style: TextStyle(
                         fontWeight: FontWeight.w900,
                         fontSize: 40,
                       ),
                     ),
                   ),
                   Positioned(
                     top: 600,
                     left: 20,
                     child: Container(
                       width: 400,
                       child: Text(
                         'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                         textAlign: TextAlign.center,
                         style: TextStyle(
                           color: Colors.black,
                           fontSize: 20.0,
                           height: 1.2,
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
                Stack(
                  children: [
                    Container(
                      height: 550,
                      child: Image(
                        image:AssetImage('images/dish7.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 480,
                      left: 130,
                      child: Text(
                        'Food in\nyour area',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 600,
                      left: 20,
                      child: Container(
                        width: 400,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return Dishes();
                        }));
                      },
                      child: Container(
                        height: 550,
                        child: Image(
                          image:AssetImage('images/dish6.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 480,
                      left: 130,
                      child: Text(
                        'Food in\nyour area',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 600,
                      left: 20,
                      child: Container(
                        width: 400,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            height: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _buildPageIndicator(),
          ),
        ],
      ),
    );
  }
}


