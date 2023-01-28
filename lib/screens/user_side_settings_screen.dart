import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:share_bottel_admin/screens/user_side_notifications_settings.dart';

class UserSideSettingsScreen extends StatefulWidget {

  @override
  _UserSideSettingsScreenState createState() => _UserSideSettingsScreenState();
}

class _UserSideSettingsScreenState extends State<UserSideSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_){
                return UserSideNotificationsSettings();
              }));
            },
            title: Text(
              "Notifications Settings",
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
          ListTile(
            title: Text(
              "Terms & Conditions",
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
                child: SvgPicture.asset("assets/svg/terms.svg"),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              "Help",
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
                child: SvgPicture.asset("assets/svg/help.svg"),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
          ListTile(
            title: Text(
              "About",
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
                child: SvgPicture.asset("assets/svg/about.svg"),
              ),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
