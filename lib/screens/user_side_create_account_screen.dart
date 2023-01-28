import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:share_bottel_admin/screens/sub_admins_screen.dart';
import 'package:share_bottel_admin/screens/user_side_location_allow_screen.dart';

import 'home_page_screen.dart';

class UserSideCreateAccountScreen extends StatefulWidget {
  @override
  _UserSideCreateAccountScreenState createState() =>
      _UserSideCreateAccountScreenState();
}

class _UserSideCreateAccountScreenState
    extends State<UserSideCreateAccountScreen> {
  bool visibility = false;

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add New SubAdmin",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Container(
        //main container
        padding: EdgeInsets.all(30),
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.black)),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.1,
                    foregroundImage: AssetImage("assets/images/jacob.png"),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Username",
                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xffeaeaea),
                ),
                child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(1900, 3, 5),
                          maxTime: DateTime(2022, 11, 25), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');
                      }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          'Date Of Birth',
                          style: TextStyle(color: Colors.black),
                        ),
                        Icon(Icons.arrow_drop_down_sharp, color: Colors.black,)
                      ],
                    )),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.1,
                    vertical: MediaQuery.of(context).size.height * 0.05),
                width: MediaQuery.of(context).size.width,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_){
                        return UserSideLocationAllowScreen();
                      }));
                    },
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text("Finish")
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
