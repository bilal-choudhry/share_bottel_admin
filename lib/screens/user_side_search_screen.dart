import 'package:cupertino_range_slider/cupertino_range_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/posts.dart';
import 'package:share_bottel_admin/screens/user_side_map_screen.dart';
import 'package:share_bottel_admin/screens/user_side_new_post.dart';

import 'user_side_google_maps.dart';

class UserSideSearchScreen extends StatefulWidget {
  const UserSideSearchScreen({Key? key}) : super(key: key);

  @override
  _UserSideSearchScreenState createState() => _UserSideSearchScreenState();
}

class _UserSideSearchScreenState extends State<UserSideSearchScreen> {

  int sliding = 0;
  double _value = 1;
  String _status = 'idle';
  Color _statusColor = Colors.amber;

  var layouts = [
    Posts(),
    UserSideGoogleMaps(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children:[
          Positioned(
            top: 0,
            child: Container(
            color: Colors.white,
            height:MediaQuery.of(context).size.height,
            child: Container(
              width: MediaQuery.of(context).size.width*1,
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.only(bottom: 50),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[ Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width*0.6,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 10),
                            fillColor: Color(0xffEFEFEF),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Search city, zipcode, address",
                            prefixIcon: Icon(Icons.search, color: Color(0xff767F9D),),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          toolbarOptions: ToolbarOptions(paste: true),
                        ),
                      ),
                        SizedBox(width:10),
                        CupertinoSlidingSegmentedControl<int>(

                          children: {
                            0: Icon(
                              Icons.list_sharp,
                              size: 35,
                            ),
                            1: Icon(
                              Icons.location_on_outlined,
                              size: 35,
                            ),
                          },
                          groupValue: sliding,
                          onValueChanged: (ssliding) {
                            setState(
                                  () {
                                sliding = ssliding!;
                              },
                            );
                          },
                        ),

                ]
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween,children: [
                        Text("In Radious", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black),),
                        Text("Miles $_status", ),

                      ],),
                    ),
                    Slider(
                      inactiveColor: Colors.black.withOpacity(0.1),
                      activeColor: Colors.black,
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      divisions: 100,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                          _status = '(${_value.round()})';
                          _statusColor = Colors.green;
                        });
                      },
                      onChangeStart: (value) {
                        setState(() {
                          _status = 'start';
                          _statusColor = Colors.lightGreen;
                        });
                      },
                      onChangeEnd: (value) {
                        setState(() {
                          _status = '$_value';
                          _statusColor = Colors.red;
                        });
                      },
                    ),
                    Expanded(child: layouts[sliding]),

                  ],
                ),
              ),
            ),
        ),
          ),

      ]
      )
    );
  }
}
