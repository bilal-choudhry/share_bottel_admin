import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/add_new_story_screen.dart';
import 'package:share_bottel_admin/screens/my_stories_third_screen.dart';
import 'package:share_bottel_admin/screens/screen_admin_dashboard.dart';

import 'my_stories_screen.dart';

class MyStoriesSecondScreen extends StatelessWidget {
  String dropdownValue = 'Select State';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) {
                    return MyStoriesScreen();
                  }));
            }
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Hawaii Cities",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (ctx) =>StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
                        return  AlertDialog(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          elevation: 3,
                          title: Center(
                              child: Text(
                                "Add New State",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 20),
                              )),
                          content: Container(
                            decoration: BoxDecoration(
                                color: Color(0xffF6F6F6),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  topLeft: Radius.circular(12),
                                )),
                            child: Container(
                              child: DropdownButton<String>(
                                icon: Icon(Icons.arrow_downward),
                                underline: SizedBox(),
                                isExpanded: true,
                                // Step 3.
                                value: dropdownValue,
                                // Step 4.
                                items: <String>[
                                  'Select State',
                                  'Georgia',
                                  'Texas',
                                  'Hawaii',
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  );
                                }).toList(),
                                // Step 5.
                                onChanged: (String? newValue) {
                                  setState(() {
                                    dropdownValue = newValue!;
                                  });
                                },
                              ),
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (_) {
                                        return MyStoriesThirdScreen();
                                      }));
                                },
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 120, vertical: 20),
                                    primary: Colors.white,
                                    backgroundColor: Colors.black,
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w500, fontSize: 20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(25))),
                                child: Text("Add"))
                          ],
                        );
                      },)
                  );
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.blue,
                    ),
                    Text(
                      " Cast",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
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
