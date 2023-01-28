import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/user_side_map_screen.dart';

import 'bottom_nav_bar_screen.dart';
import 'home_page_screen.dart';

class UserSideLocationAllowScreen extends StatefulWidget {
  @override
  _UserSideLocationAllowScreenState createState() =>
      _UserSideLocationAllowScreenState();
}

class _UserSideLocationAllowScreenState
    extends State<UserSideLocationAllowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: Center(child: Image.asset("assets/images/allow_screen.png")),
            ),
            Text(
              "Allow \"Share Location\"",
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05),
              child: Text(
                "to use your location",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Text(
              "This app requires access to your",
              style: TextStyle(
                  color: Color(0xff393939),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "location to match with the nearest",
              style: TextStyle(
                  color: Color(0xff393939),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              "Clubs! ",
              style: TextStyle(
                  color: Color(0xff393939),
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  ),
              margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return UserSideMapScreen();
                    }));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.white,
                      backgroundColor: Colors.black,
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text("Allow")),
            ),
            Container(
              margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height * 0.05),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 1.3)
                 ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return BottomNavBarScreen();
                    }));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.transparent,
                      textStyle:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text("Allow while using app")),
            ),
            Container(

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black, width: 1.3)
                  ),
              height: MediaQuery.of(context).size.height * 0.06,
              width: MediaQuery.of(context).size.width * 0.6,
              child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return BottomNavBarScreen();
                    }));
                  },
                  style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: Colors.transparent,
                      textStyle:
                      TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: Text("Don't Allow")),
            )
          ],
        ),
      ),
    );
  }
}
