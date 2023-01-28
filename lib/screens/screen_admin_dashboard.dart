import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';
import 'package:share_bottel_admin/screens/my_stories_second_screen.dart';
import 'package:share_bottel_admin/screens/screen_admin_forget_password.dart';

class Screen_Admin_DashBoard extends StatefulWidget {
  @override
  State<Screen_Admin_DashBoard> createState() => _Screen_Admin_DashBoardState();
}

class _Screen_Admin_DashBoardState extends State<Screen_Admin_DashBoard> {
  bool checkBox = false;
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width*1,
          child: Stack(
            children: [
              Container(
                width: _mediaQueryWidth * 1,
                height: _mediaQueryHeight * 0.4,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Center(
                  child: Text(
                    "Share Bottel",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 33,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: _mediaQueryHeight * 0.25,
                    bottom: _mediaQueryHeight * 0.25,
                left: _mediaQueryWidth * 0.05, right:_mediaQueryWidth * 0.05 ),
                child: Container(

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(3, 5),
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 3)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 20,),
                      Center(
                        child: Text(
                          "Admin Login",
                          style:
                              TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Welcome Back!",
                          style:
                              TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: _mediaQueryWidth * 0.1,),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xffeaeaea),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xff015256).withOpacity(0.5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "Email",
                          ),
                          toolbarOptions: ToolbarOptions(
                              copy: true, cut: true, selectAll: true, paste: true),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: _mediaQueryWidth * 0.1,),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          decoration: InputDecoration(
                            fillColor: Color(0xffeaeaea),
                            filled: true,
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xff015256).withOpacity(0.5),
                              ),
                            ),
                            hintText: "Password",
                            suffixIcon: IconButton(
                              icon: (visibility)
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: Color(0xffA7A7A7),
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: Color(0xffA7A7A7),
                                    ),
                              color: Colors.white,
                              onPressed: () {
                                setState(() {
                                  visibility = !visibility;
                                });
                              },
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          toolbarOptions: ToolbarOptions(paste: true),
                          obscureText: visibility,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: _mediaQueryWidth * 0.1,),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(
                                      activeColor: Colors.green,
                                      value: checkBox,
                                      onChanged: (value) {
                                        setState(() {
                                          checkBox = value!;
                                        });
                                      }),
                                  Text(
                                    "Remember Me",
                                    style: TextStyle(
                                        color: Color(0xff898989), fontSize: 10),
                                  ),
                                ],
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (_) {
                                      return ScreenAdminForgetPassword();
                                    }));
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                        fontStyle: FontStyle.italic,
                                        fontSize: 10,
                                        color: Colors.black),
                                  ))
                            ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: _mediaQueryWidth * 0.1,),
                        width: MediaQuery.of(context).size.width,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (_) {
                                return HomePageScreen();
                              }));
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.black,
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            child: Text("Sign In")),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
