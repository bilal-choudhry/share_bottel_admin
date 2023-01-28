import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';

class SettingsScreen extends StatefulWidget {

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  var visibility = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
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
              return HomePageScreen();
            },

            ));
          },
        ),
        elevation: 1,

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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
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
                  margin:EdgeInsets.only(top:MediaQuery.of(context).size.height*0.3),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height*0.06,
                  child: TextButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (ctx) =>StatefulBuilder(builder: (BuildContext context, void Function(void Function()) setState) {
                              return  AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                elevation: 3,
                                content: Image.asset("assets/images/published.png"),
                                actions: <Widget>[
                                  Center(
                                    child: Text("Saved!", style: TextStyle(
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
                          primary: Colors.white,
                          backgroundColor: Colors.black,
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                      child: Text("Save")),
                )

              ],
            ),
          ),]
      ),
    );
  }
}
