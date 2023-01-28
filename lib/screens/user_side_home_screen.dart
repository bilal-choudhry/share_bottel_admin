import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_bottel_admin/screens/user_side_chat_notifications_screen.dart';

class UserSideHomeScreen extends StatefulWidget {
  @override
  State<UserSideHomeScreen> createState() => _UserSideHomeScreenState();
}

class _UserSideHomeScreenState extends State<UserSideHomeScreen> {

  var iconButton = false;
  var _bottomNavIndex = 0;
  final iconList = <IconData>[
    Icons.home_filled,
    Icons.search,
    Icons.chat,
    Icons.supervised_user_circle,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: MediaQuery.of(context).size.width*1,
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, ),
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          fillColor: Color(0xffFE7D55).withOpacity(0.13),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "What are you seeing?",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true, cut: true, selectAll: true, paste: true),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Stack(
                      children:[
                        Container(
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)
                                {return UserSideChatNotificationsScreen();
                                } ));
                              },
                              icon: Icon(
                                Icons.notifications_none,
                                color: Colors.black,size: 35,
                              )),
                        ),
                        Positioned(
                          top: 14,
                          left:28,
                          child: Container(
                            height: 7,
                            width: 7,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red

                            ),

                          ),
                        )
                      ]
                    ),
                    SizedBox(width: 10,),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: new DecorationImage(
                            image: new AssetImage("assets/images/instadp.png"),
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.all(05),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 4),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/a.png"),
                                    fit: BoxFit.contain,
                                  )),
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(flex: 1, child: Text("James", style: TextStyle(fontWeight: FontWeight.w600),))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.all(05),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 4),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/b.png"),
                                    fit: BoxFit.contain,
                                  )),
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(flex: 1, child: Text("Alex", style: TextStyle(fontWeight: FontWeight.w600),))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.all(05),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 4),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/c.png"),
                                    fit: BoxFit.cover,
                                  )),
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(flex: 1, child: Text("Kate", style: TextStyle(fontWeight: FontWeight.w600),))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Container(
                            padding: EdgeInsets.all(05),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.red, width: 4),
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/d.png"),
                                    fit: BoxFit.contain,
                                  )),
                              width: 80,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(flex: 1, child: Text("Sarah", style: TextStyle(fontWeight: FontWeight.w600),))
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/a.png"),
                ),
                title: Row(
                  children: [
                    Text(
                      "Jacob James . ",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        " Follow ",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
                subtitle: Text("09:07 AM"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_rounded),
                  color: Color(0xff8C8C8C),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/story.png"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        right: 12,
                        top: 13,
                        child: SvgPicture.asset("assets/svg/chat.svg")),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            iconButton = !iconButton;
                          });
                        },
                        icon: (iconButton)
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.black,
                              )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.ios_share_outlined,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/c.png"),
                ),
                title: Row(
                  children: [
                    Text(
                      "Kate Winslet . ",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        " Follow ",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
                subtitle: Text("09:07 AM"),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_horiz_rounded),
                  color: Color(0xff8C8C8C),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/post1.png"),
                        fit: BoxFit.cover)),
                child: Stack(
                  children: [
                    Positioned(
                        right: 12,
                        top: 13,
                        child: SvgPicture.asset("assets/svg/chat.svg")),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: MediaQuery.of(context).size.height * 0.08,
                color: Colors.white,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            iconButton = !iconButton;
                          });
                        },
                        icon: (iconButton)
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : Icon(
                          Icons.favorite_border,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment_outlined,
                          color: Colors.black,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.ios_share_outlined,
                          color: Colors.black,
                        ))
                  ],
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
