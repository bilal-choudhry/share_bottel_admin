import 'package:flutter/material.dart';

class UserSideProfileEditScreen extends StatefulWidget {
  @override
  _UserSideProfileEditScreenState createState() => _UserSideProfileEditScreenState();
}

class _UserSideProfileEditScreenState extends State<UserSideProfileEditScreen> {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Edit",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ))
        ],
        title: Text(
          "Profile",
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: _height * 0.05),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: _height * 0.05),
                alignment: Alignment.center,
                color: Colors.transparent,
                height: 150,
                width: _width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 5)
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2)),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/jacob.png"),
                        radius: 70,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: -10,
                      left: 120,
                      top: 90,
                      child: Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: 1)),
                        child: Image.asset(
                          "assets/images/camera.png",
                          width: 60,
                          height: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "UserName",
                    style: TextStyle(color: Color(0xff5F5E5E)),
                  )),
              SizedBox(height: 10,),
              Container(
                width: _width*1,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Username",

                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Phone",
                    style: TextStyle(color: Color(0xff5F5E5E)),
                  )),
              SizedBox(height: 10,),
              Container(
                width: _width*1,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Phone",

                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              SizedBox(height: 30,),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Date of birth",
                    style: TextStyle(color: Color(0xff5F5E5E)),
                  )),
              SizedBox(height: 10,),
              Container(
                width: _width*1,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Date Of Birth",

                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
