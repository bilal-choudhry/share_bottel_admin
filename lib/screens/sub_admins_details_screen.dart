import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/sub_admins_screen.dart';

class SubAdminsDetailsScreen extends StatefulWidget {
  @override
  State<SubAdminsDetailsScreen> createState() => _SubAdminsDetailsScreenState();
}

class _SubAdminsDetailsScreenState extends State<SubAdminsDetailsScreen> {
  bool click = false;
  bool click1 = false;
  bool click2 = false;
  bool click3 = false;
  bool click4 = false;
  var colorz = Colors.grey.withOpacity(.5);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Text("Sub Admin Details",style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20,
        ),),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ))
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(_)
            {
              return SubAdminsScreen();
            },

            ));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Jacob"),
            subtitle: Text("abc@gmail.com"),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: Text(
                "Permissions",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            decoration: BoxDecoration(color: Colors.grey),
          ),
          SwitchListTile(
              activeTrackColor: colorz,
              activeColor: Colors.green,
              title: Text(
                "Share Story",
                style: TextStyle(color: Colors.black),
              ),
              value: click,
              onChanged: (value) {
                setState(() {
                  colorz = Colors.green;
                  click = value;
                });
              }),
          SwitchListTile(
              activeTrackColor: colorz,
              activeColor: Colors.green,
              title: Text(
                "See User",
                style: TextStyle(color: Colors.black),
              ),
              value: click1,
              onChanged: (value) {
                setState(() {
                  colorz = Colors.green;
                  click1 = value;
                });
              }),
          SwitchListTile(
              activeTrackColor: colorz,
              activeColor: Colors.green,
              title: Text(
                "Send Notifications",
                style: TextStyle(color: Colors.black),
              ),
              value: click2,
              onChanged: (value) {
                setState(() {
                  colorz = Colors.green;
                  click2 = value;
                });
              }),
          SwitchListTile(
              activeTrackColor: colorz,
              activeColor: Colors.green,
              title: Text(
                "Block User",
                style: TextStyle(color: Colors.black),
              ),
              value: click3,
              onChanged: (value) {
                setState(() {
                  colorz = Colors.green;
                  click3 = value;
                });
              }),
          SwitchListTile(
              activeTrackColor: colorz,
              activeColor: Colors.green,
              title: Text(
                "Delete User Post",
                style: TextStyle(color: Colors.black),
              ),
              value: click4,
              onChanged: (value) {
                setState(() {
                  colorz = Colors.green;
                  click4 = value;
                });
              }),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height*0.06,
            margin: EdgeInsets.symmetric(
                horizontal:MediaQuery.of(context).size.width*0.1),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                backgroundColor: Colors.white,
                primary: Colors.red,
                side: BorderSide(color: Colors.red, width: 2), //<-- SEE HERE
              ),
              onPressed: () {},
              child: Text(
                'Remove SubAdmin',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
