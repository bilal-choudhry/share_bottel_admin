import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_bottel_admin/screens/user_side_verification_screen.dart';

import 'home_page_screen.dart';

class UserSideSignupScreen extends StatefulWidget {
  @override
  _UserSideSignupScreenState createState() => _UserSideSignupScreenState();
}

class _UserSideSignupScreenState extends State<UserSideSignupScreen> {
  bool checkBox = false;
  final countryPicker = FlCountryCodePicker();
  CountryCode? countryCode;
  var colr = Colors.black;

  @override
  Widget build(BuildContext context) {
    var heiGht = MediaQuery.of(context).size.height;
    var wiDth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Signup",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    bottom: MediaQuery.of(context).size.height * 0.03),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Phone Verification",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Add your phone number we will send you a verification codeso we know you’re real.",
                  style: TextStyle(
                    color: Color(0xff353535),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ),
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
                    vertical: heiGht * 0.05, horizontal: wiDth * 0.05),
                child: TextFormField(
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

                      prefixIcon: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: GestureDetector(
                              onTap: () async {
                                final code = await countryPicker.showPicker(
                                    context: context);
                                setState(() {
                                  countryCode = code;
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    child: countryCode != null
                                        ? countryCode!.flagImage
                                        : null,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                      ),
                                      child:
                                          Text(countryCode?.dialCode ?? "+1")),
                                ],
                              )),
                        ),
                      ),
                      hintText: "Phone Number",
                      suffixIcon: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)),
                      )),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: wiDth * 0.05),
                child: Row(
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
                      "Agree with ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                    Text("Terms and Conditions.",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.blue)),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 6,
                  )]
                ),
                margin: EdgeInsets.symmetric(
                    vertical: MediaQuery.of(context).size.height * 0.05),
                height: MediaQuery.of(context).size.height*0.06,
                width: MediaQuery.of(context).size.width*0.6,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return UserSideVerificationScreen();
                      }));
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text("Send OTP")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
