import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/bottom_nav_bar_screen.dart';
import 'package:share_bottel_admin/screens/post_screen.dart';
import 'package:share_bottel_admin/screens/user_side_camera_screen.dart';
import 'package:share_bottel_admin/screens/user_side_google_maps.dart';
import 'package:share_bottel_admin/screens/user_side_map_screen.dart';
import 'package:share_bottel_admin/screens/user_side_search_screen.dart';
import 'package:share_bottel_admin/screens/user_side_splash_screen.dart';


void main() {
  runApp(Main_Screen());
}
class Main_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Comfortaa",
      ),
      title: "Share Bottel",
      home: UserSideSplashScreen(),
    );
  }
}

