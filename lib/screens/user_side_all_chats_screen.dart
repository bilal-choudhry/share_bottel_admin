import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_bottel_admin/screens/user_side_chat_person_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:flutter/cupertino.dart';

class UserSideAllChatsScreen extends StatefulWidget {
  @override
  _UserSideAllChatsScreenState createState() => _UserSideAllChatsScreenState();
}

class _UserSideAllChatsScreenState extends State<UserSideAllChatsScreen> {
  var iconButton = false;
  var _bottomNavIndex = 0;
  var _color = Colors.grey;
  var heart = false;
  PageController controller = PageController();
  dynamic selected;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  child: Center(
                    child: Container(
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      width: MediaQuery.of(context).size.width * 0.95,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Chats",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            //SearchBar
                            Center(
                              child: Container(
                                height: 43,
                                child: TextField(
                                  keyboardType: TextInputType.emailAddress,
                                  autofocus: true,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(
                                        top: 5, left: 10, bottom: 5),
                                    suffixIcon: Icon(
                                      Icons.search,
                                      color: Colors.black,
                                    ),
                                    fillColor: Colors.white,
                                    filled: true,
                                    border: InputBorder.none,
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Colors.black, width: 2),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          width: 2, color: Colors.black),
                                    ),
                                    hintText: "Search...",
                                  ),
                                  toolbarOptions: ToolbarOptions(
                                      copy: true,
                                      cut: true,
                                      selectAll: true,
                                      paste: true),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Stack(children: [
                              Container(
                                height: 80,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/a.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Andrio",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/b.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Alex",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/c.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Rose",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/d.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Charlotte",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/e.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Daniels",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/f.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Fredricks",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(children: [
                                        Column(
                                          children: [
                                            Container(
                                                height: 60,
                                                width: 60,
                                                child: ClipOval(
                                                  child: Image.asset(
                                                    "assets/images/b.png",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                )),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Rodricks",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12,
                                                  color: Colors.black),
                                            ),
                                          ],
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          right: 4,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Colors.green,
                                                shape: BoxShape.circle),
                                            height: 10,
                                            width: 10,
                                          ),
                                        )
                                      ]),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Recents",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListTile(
                              onTap: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (_) {
                                      return UserSideChatPersonScreen();
                                    }));
                              },
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/a.png"),
                              ),
                              title: Text(
                                "Micheal Joshua",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "I'm on th way ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070)),
                              ),
                              trailing: Text("12:04 AM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff707070))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/b.png"),
                              ),
                              title: Text(
                                "Zayn Rhodes",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "I'm on th way ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070)),
                              ),
                              trailing: Text("12:04 AM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff707070))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/c.png"),
                              ),
                              title: Text(
                                "Rose Marrie",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "I'm on th way ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070)),
                              ),
                              trailing: Text("12:04 AM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff707070))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/d.png"),
                              ),
                              title: Text(
                                "Charlotte Johnson",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "I'm on th way ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070)),
                              ),
                              trailing: Text("12:04 AM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff707070))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            ListTile(
                              leading: CircleAvatar(
                                child: Image.asset("assets/images/e.png"),
                              ),
                              title: Text(
                                "Kate Winslet",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              subtitle: Text(
                                "I'm on th way ",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff707070)),
                              ),
                              trailing: Text("12:04 AM",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff707070))),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: -60,
                  left: -35,
                  child: Container(
                    width: 175,
                    height: 166,
                    decoration: BoxDecoration(
                        color: Color(0xffFE7D55).withOpacity(0.16),
                        shape: BoxShape.circle),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      /*bottomNavigationBar: StylishBottomBar(
        onTap:(index){

        },
        items: [
          AnimatedBarItems(
              icon: Icon(
                Icons.home,
              ),
              selectedColor: Colors.black,
              backgroundColor: Colors.black,
              title: Text('Home', style: TextStyle(fontSize: 10),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.search,
              ),
              selectedColor: Colors.black,
              backgroundColor: Colors.black,
              title: Text('Search', style: TextStyle(fontSize: 10, color: _color),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.chat_outlined,
              ),
              backgroundColor: Colors.black,
              selectedColor: Colors.black,
              title: Text('Chat',style: TextStyle(fontSize: 10),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.person,
              ),
              backgroundColor: Colors.black,
              selectedColor: Colors.black,
              title: Text('Profile',style: TextStyle(fontSize: 10),)),
          // BubbleBarItem(icon: Icon(Icons.home), title: Text('Home')),
          // BubbleBarItem(icon: Icon(Icons.add_circle_outline), title: Text('Add')),
          // BubbleBarItem(icon: Icon(Icons.person), title: Text('Profile')),

        ],
        iconSize: 32,
        barAnimation: BarAnimation.blink,
        iconStyle: IconStyle.animated,
        // iconStyle: IconStyle.simple,
        hasNotch: true,

        *//*iconSize: 25,
        barAnimation: BarAnimation.fade,
        // iconStyle: IconStyle.animated,
        iconStyle: IconStyle.animated,
        hasNotch: true,*//*
        fabLocation: StylishBarFabLocation.center,
        opacity: 0.3,
        currentIndex: selected ?? 0,

        //Bubble bar specific style properties
        unselectedIconColor: Colors.grey,
        barStyle: BubbleBarStyle.horizotnal,
        bubbleFillStyle: BubbleFillStyle.fill,

        onTap: (index) {
          setState(() {
            selected = index;

          });
        },

      ),

        floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        backgroundColor: Colors.black,
        child: Icon(CupertinoIcons.add , color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/
      backgroundColor: Colors.white,
    );
  }
}

