import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/screen_admin_dashboard.dart';

import 'home_page_screen.dart';

class ScreenAdminForgetPassword extends StatefulWidget {
  const ScreenAdminForgetPassword({Key? key}) : super(key: key);

  @override
  _ScreenAdminForgetPasswordState createState() =>
      _ScreenAdminForgetPasswordState();
}

class _ScreenAdminForgetPasswordState extends State<ScreenAdminForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Screen_Admin_DashBoard();
            }));
          },
        ),
      ),
      body: SafeArea(
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
              Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Forget Password",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
                alignment: Alignment.centerLeft,
                child: Text("Enter your email to recover your password")),
            SizedBox(height: 80,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 8,
                          blurRadius: 12,
                          offset: Offset(1, 3)

                      ),

                    ]
                ),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide(
                        color: Color(0xff015256).withOpacity(0.5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Email",
                    contentPadding: EdgeInsets.only(left: 20, top: 15)
                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*0.06,
                // padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 10,
                        blurRadius: 15,
                        offset: Offset(1, 3)

                    ),

                  ],),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
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
                    child: Text("Send")),
              ),
            )

        ],
      ),
    ),
    ),
    backgroundColor: Colors.white,
    );
  }
}
