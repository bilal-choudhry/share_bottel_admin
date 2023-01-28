import 'package:flutter/material.dart';

import 'add_new_story_screen.dart';
import 'my_stories_screen.dart';
import 'my_stories_second_screen.dart';

class MyStoriesThirdScreen extends StatefulWidget {

  @override
  _MyStoriesThirdScreenState createState() => _MyStoriesThirdScreenState();
}

class _MyStoriesThirdScreenState extends State<MyStoriesThirdScreen> {
  String dropdownValue = 'Select State';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hwaii Cities"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
          {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) {
                  return MyStoriesSecondScreen();
                }));
          }
        },),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return AddNewStoryScreen();
              }));
            },
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 3.0, // soften the shadow
                    spreadRadius: 2.0, //extend the shadow
                    offset: Offset(
                      2.0, // Move to right 5  horizontally
                      2.0, // Move to bottom 5 Vertically
                    ),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 4,
                      child: Icon(
                        Icons.add_circle_outline_sharp,
                        color: Colors.white,
                        size: 70,
                      )),
                  Expanded(
                      flex: 1,
                      child: Text("Add Story for all",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                              color: Colors.white))),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset("assets/images/hwaiCity.png",
                      width:MediaQuery.of(context).size.width,
                      height:MediaQuery.of(context).size.height, )),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset("assets/images/states/alaska.png")),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset("assets/images/states/alaska.png")),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset("assets/images/states/alaska.png")),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset("assets/images/states/alaska.png")),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              color: Color(0xFFffffff),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    flex: 5,
                    child: Image.asset(
                      "assets/images/states/alaska.png",
                    )),
                Expanded(
                    flex: 1,
                    child: Text("Alaska",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
