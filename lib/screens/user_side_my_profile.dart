import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:share_bottel_admin/screens/user_side_notifications_settings.dart';
import 'package:share_bottel_admin/screens/user_side_profile_edit_screen.dart';
import 'package:share_bottel_admin/screens/user_side_settings_screen.dart';
import 'package:share_bottel_admin/screens/user_side_splash_screen.dart';

class UserSideMyProfile extends StatefulWidget {
  @override
  _UserSideMyProfileState createState() => _UserSideMyProfileState();
}

class _UserSideMyProfileState extends State<UserSideMyProfile> {
  var iconButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1,
                height: 350.0,
                child: Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.elliptical(
                                  MediaQuery.of(context).size.height * 9,
                                  MediaQuery.of(context).size.height * 3),
                              topRight: Radius.elliptical(
                                  MediaQuery.of(context).size.height * 9,
                                  MediaQuery.of(context).size.height * 3)),
                        ),
                      ),
                    ),
                    //Profile Picture
                    Positioned(
                      bottom: 100,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 2),
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 4
                          )]
                        ),
                        child: Image.asset(
                          "assets/images/jacob.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    //Name
                    Positioned(
                      bottom: 70,
                      child: Text(
                        "Darlene",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ),
                    //Email
                    Positioned(
                      bottom: 50,
                      child: Text(
                        "xyz@email.com",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.black),
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
              ),
              Container(
                color: Color(0xffA3A3A3
                ).withOpacity(0.3),

                width: MediaQuery.of(context).size.width*1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Preferences",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return UserSideProfileEditScreen();
                    }));
                  },
                  title: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffC4C4C4
                        ).withOpacity(0.31)
                    ),
                    child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/svg/editprofile.svg")
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return UserSideNotificationsSettings();
                    }));
                  },
                  title: Text(
                    "Settings",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffC4C4C4
                        ).withOpacity(0.31)
                    ),
                    child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/svg/bell.svg")
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0),
                child: ListTile(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_){
                      return UserSideSplashScreen();
                    }));
                  },
                  title: Text(
                    "Logout",
                    style: TextStyle(color: Colors.black),
                  ),
                  leading: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xffC4C4C4
                        ).withOpacity(0.31)
                    ),
                    child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: SvgPicture.asset("assets/svg/logout.svg")
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
