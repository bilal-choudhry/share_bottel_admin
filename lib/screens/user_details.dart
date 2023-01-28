import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/all_users_screen.dart';

import 'package:share_bottel_admin/screens/post_screen.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return AllUsersScreen();
            }));
          },
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          "User Details",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: _mediaQuery.height,
          width: _mediaQuery.width,
          child: IntrinsicWidth(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return PostScreen();
                    }));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/user_details.png'),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Container(
                    width: _mediaQuery.width * 0.8,
                    child: IntrinsicHeight(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "Followers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "196",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.black.withOpacity(0.5),
                            width: 20,
                            thickness: 0.3,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "Following",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "46",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          VerticalDivider(
                            color: Colors.black.withOpacity(0.5),
                            width: 20,
                            thickness: 0.3,
                          ),
                          Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "Total Posts",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.0),
                                  child: Text(
                                    "30",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Name",
                        style: TextStyle(color: Color(0xff6A6A6A)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Jacob Jones",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Phone",
                        style: TextStyle(color: Color(0xff6A6A6A)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "+1 004 3457",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 10),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Date of Birth",
                        style: TextStyle(color: Color(0xff6A6A6A)),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "March 13, 1998",
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.3,
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
                  height: MediaQuery.of(context).size.height*0.04,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      backgroundColor: Colors.white,
                      primary: Colors.red,
                      side: BorderSide(
                          color: Colors.red, width: 2), //<-- SEE HERE
                    ),
                    onPressed: () {},
                    child: Text(
                      'Block User',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
