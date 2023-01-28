import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_bottel_admin/screens/user_side_story_view_screen.dart';
import 'package:share_bottel_admin/screens/user_side_verification_screen.dart';

class UserSideLoginScreen extends StatefulWidget {
  @override
  _UserSideLoginScreenState createState() => _UserSideLoginScreenState();
}

class _UserSideLoginScreenState extends State<UserSideLoginScreen> {
  @override
  Widget build(BuildContext context) {
    var wiDth = MediaQuery.of(context).size.width;
    var heiGht = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Login",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.symmetric(vertical: heiGht * 0.05),
                  child: Text(
                    "Share Bottel",
                    style: TextStyle(
                        color: Color(0xff767676),
                        fontWeight: FontWeight.w700,
                        fontSize: 28,
                        shadows: [
                          Shadow(
                            color: Colors.grey.withOpacity(0.2),
                            offset: Offset(3, 3),
                            blurRadius: 3,
                          )
                        ]),
                  )),
            ),
            Text("Welcome Back",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 8,
                      blurRadius: 12,
                      color: Colors.grey.withOpacity(0.2),
                    )
                  ]),
              margin: EdgeInsets.symmetric(
                  vertical: heiGht * 0.05, horizontal: wiDth * 0.1),
              child: TextField(
                keyboardType: TextInputType.phone,
                autofocus: true,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Phone",
                ),
                toolbarOptions: ToolbarOptions(
                    copy: true, cut: true, selectAll: true, paste: true),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: wiDth * 0.1, vertical: heiGht * 0.05),
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) {
                        return UserSideVerificationScreen();
                      },
                    ));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text("Login")),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: wiDth * 0.1),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.3,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: Text("or"),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1.3,
                      color: Colors.black,
                    ),
                  ),
                ]),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: wiDth * 0.1, vertical: heiGht * 0.05),
              width: MediaQuery.of(context).size.width,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (_) {
                        return UserSideStoryViewScreen();
                      },
                    ));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset("assets/svg/apple.svg"),
                        Text("Apple"),
                        SizedBox()
                      ],
                    ),
                  )),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Row(
              mainAxisAlignment:MainAxisAlignment.center ,
              children: [
                Text(
                  "Don’t have an account  | ",
                  style: TextStyle(
                      color: Color(0xff979797),
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (_) {
                          return UserSideVerificationScreen();
                        },
                      ));
                    },
                    child: Text("SignUp", style:  TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
