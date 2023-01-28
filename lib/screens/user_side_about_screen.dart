import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserSideAboutScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text("About", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18),),
      ),
      body: Center(
        child: Container(
          width: _mediaQueryWidth*0.9,
          child: Column(

            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: _mediaQueryHeight*0.1),
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
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: _mediaQueryHeight*0.05),
                child: Center(
                  child: Text (
                    "Help protect your "
                        "website and its users with clear and"
                        " fair website terms and conditions.",
                    style: TextStyle(
                        color: Colors.black ,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,

                        ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text (
                  "Version",
                  style: TextStyle(
                    color: Colors.black ,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text (
                  "2.1.0",
                  style: TextStyle(
                    color: Color(0xff7B7B7B) ,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text (
                  "Powered By",
                  style: TextStyle(
                    color: Colors.black ,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Align(
                alignment: Alignment.topLeft,
                child: Text (
                  "ShareBottel",
                  style: TextStyle(
                    color: Color(0xff7B7B7B) ,
                    fontWeight: FontWeight.w400,
                    fontSize: 10,

                  ),
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: Container(
                    width: _mediaQueryWidth * 0.9,
                    child: Text(
                      "Contact Us",
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
            ],
          ),

        ),
      ),
    );
  }
}
