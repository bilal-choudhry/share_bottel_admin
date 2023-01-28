import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_bottel_admin/screens/user_side_login_screen.dart';
import 'package:share_bottel_admin/screens/user_side_signup_screen.dart';

class UserSideSplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Text(
                "Share Bottel",
                style: TextStyle(
                    fontSize: 33,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),

              Positioned(
                bottom: 0,
                child: Column(

                  children: [
                    Row(children: [
                      Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white)
                        ),
                        width: MediaQuery.of(context).size.width*0.4,
                        height: 45,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_){
                                return UserSideLoginScreen();
                              }));
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white.withOpacity(0.3),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            child: Text("Login")),
                      ),
                      SizedBox( width: 20,),
                      Container(

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white)
                        ),
                        width: MediaQuery.of(context).size.width*0.4,
                          height: 45,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (_){
                                return UserSideSignupScreen();
                              }));
                            },
                            style: TextButton.styleFrom(
                                primary: Colors.white,
                                backgroundColor: Colors.white.withOpacity(0.3),
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            child: Text("Signup")),
                      )


                    ],),
                    SizedBox(height: 40),
                    Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                              child: SvgPicture.asset(
                                "assets/svg/alert.svg",
                                color: Colors.white,
                              )),
                          SizedBox(width:5 ,),
                          Text(
                            "You must be 22 to use this app",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ) /* add child content here */,
        ),
      ),
    );
  }
}
