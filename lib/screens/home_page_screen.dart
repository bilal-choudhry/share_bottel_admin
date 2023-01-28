import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/my_stories_screen.dart';
import 'package:share_bottel_admin/screens/screen_send_notification.dart';
import 'package:share_bottel_admin/screens/settings_screen.dart';
import 'package:share_bottel_admin/screens/sub_admins_screen.dart';

import 'all_users_screen.dart';
import 'blocked_users_list_screen.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: _mediaQuery.height,
          width: _mediaQuery.width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    )),
                height: MediaQuery.of(context).size.height * 0.3,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Dashboard",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                              color: Colors.white),
                        ),
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey,
                            ),
                            child: IconButton(
                                color: Colors.white,
                                onPressed: () {},
                                icon: Icon(Icons.search)))
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      // padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.zero,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) {
                              return AllUsersScreen();
                            },
                          ));
                        },
                        child: ListTile(
                          title: Text(
                            "Users",
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: Icon(
                            Icons.supervised_user_circle_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) {
                              return MyStoriesScreen();
                            }));
                          },
                          title: Text(
                            "My Stories",
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: Icon(
                            Icons.amp_stories,
                            color: Colors.black,
                          ),
                        )),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      // padding: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.zero,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 3,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (_) {
                              return SubAdminsScreen();
                            },
                          ));
                        },
                        child: ListTile(
                          title: Text(
                            "SubAdmins",
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: Icon(
                            Icons.admin_panel_settings_sharp,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ListTile(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (_) {
                                  return BlockedUsersListScreen();
                                },
                              ));
                            },
                            title: Text(
                              "Blocked Users",
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: Icon(
                              Icons.block,
                              color: Colors.black,
                            ))),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: ListTile(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (_) {
                                return ScreenSendNotification();
                              },
                            ));
                          },
                          title: Text(
                            "Notifications",
                            style: TextStyle(color: Colors.black),
                          ),
                          leading: Icon(Icons.notifications_active_outlined),
                        )),
                    Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        // padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.zero,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3,
                              blurRadius: 5,
                            ),
                          ],
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (_) {
                                return SettingsScreen();
                              },
                            ));
                          },
                          child: ListTile(
                            title: Text(
                              "Settings",
                              style: TextStyle(color: Colors.black),
                            ),
                            leading: IconButton(
                              color: Colors.black,
                              onPressed: () {},
                              icon: Icon(Icons.settings),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
