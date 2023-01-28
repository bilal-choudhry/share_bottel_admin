import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserSideContactUsScreen extends StatefulWidget {
  @override
  _UserSideContactUsScreenState createState() =>
      _UserSideContactUsScreenState();
}

class _UserSideContactUsScreenState extends State<UserSideContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Help",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 4, spreadRadius: 3)
                    ]),
                width: _mediaQueryWidth * 0.9,
                child: Column(
                  children: [
                    Text(
                      "Contact Us",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: _mediaQueryWidth * 0.1,
                      ),
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffeaeaea),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          hintText: "Your Name",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: _mediaQueryWidth * 0.1,
                      ),
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffeaeaea),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          hintText: "Your Contact Number",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: _mediaQueryWidth * 0.1,
                      ),
                      child: TextField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffeaeaea),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          hintText: "Your Email",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: _mediaQueryWidth * 0.1,
                      ),
                      child: TextField(
                        maxLines: 5,
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffeaeaea),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          ),
                          hintText: "Your Feedback is important to us ",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 6)
                          ]),
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.black,
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          child: Text("Send")),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              thickness: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                  width: _mediaQueryWidth * 0.9,
                  child: Text(
                    "We Are Available On",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )),
            ),
            SizedBox(height: 10,),
            Container(
              width: _mediaQueryWidth*0.9,
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg/web.svg"),
                  SizedBox(width: 10,),
                  Text(
                    "www.sharebottle.com",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: _mediaQueryWidth*0.9,
              child: Row(
                children: [
                  SvgPicture.asset("assets/svg/email.svg"),
                  SizedBox(width: 10,),
                  Text(
                    "Contact@sharebottle.com",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,)
          ],
        ),
      ),
    );
  }
}
