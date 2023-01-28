import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/sub_admins_screen.dart';

import 'my_stories_second_screen.dart';

class AddNewSubadminScreen extends StatefulWidget {
  @override
  _AddNewSubadminScreenState createState() => _AddNewSubadminScreenState();
}

class _AddNewSubadminScreenState extends State<AddNewSubadminScreen> {
  bool visibility = false;
  @override
  Widget build(BuildContext context) {
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
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(_)
            {
              return SubAdminsScreen();
            },

            ));
          },
        ),
        elevation: 1,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          )
        ],
      ),
      body: ListView(
        children: [Container(
          //main container
          padding: EdgeInsets.all(30),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black)
                  ),
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width*0.1,
                    foregroundImage: AssetImage("assets/images/jacob.png"),

                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width*0.9,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff015256).withOpacity(0.5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Full Name",
                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                width: MediaQuery.of(context).size.width*0.9,
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff015256).withOpacity(0.5),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Email",
                  ),
                  toolbarOptions: ToolbarOptions(
                      copy: true, cut: true, selectAll: true, paste: true),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.9,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  autofocus: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xffeaeaea),
                    filled: true,
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xff015256).withOpacity(0.5),
                      ),
                    ),
                    hintText: "Password",
                    suffixIcon: IconButton(
                      icon: (visibility)
                          ? Icon(
                        Icons.visibility_off,
                        color: Color(0xffA7A7A7),
                      )
                          : Icon(
                        Icons.visibility,
                        color: Color(0xffA7A7A7),
                      ),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          visibility = !visibility;
                        });
                      },
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  toolbarOptions: ToolbarOptions(paste: true),
                  obscureText: visibility,
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50),
                width: MediaQuery.of(context).size.width*0.9,
                child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (ctx) =>StatefulBuilder(builder: (BuildContext context,
                              void Function(void Function()) setState) {
                            return  AlertDialog(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              elevation: 3,
                              content: Image.asset("assets/images/published.png"),
                              actions: <Widget>[
                                Center(
                                  child: Text("Added!", style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20,
                                      color: Colors.black
                                  ),),
                                ),
                              ],
                            );
                          },)
                      );

                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                            horizontal: 120, vertical: 20),
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25))),
                    child: Text("Add")),
              )

            ],
          ),
        ),]
      ),
    );
  }
}
