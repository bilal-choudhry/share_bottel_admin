import 'package:flutter/material.dart';

class UserSideChatNotificationsScreen extends StatefulWidget {

  @override
  _UserSideChatNotificationsScreenState createState() =>
      _UserSideChatNotificationsScreenState();
}

class _UserSideChatNotificationsScreenState extends State<UserSideChatNotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
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
          },
        ),
        elevation: 1,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(

                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 6,
                      spreadRadius: 3
                    )
                  ]

                ),
                width: MediaQuery.of(context).size.width*0.9,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    title: Text("Chat"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text("Jacks send a new message",),
                      ],
                    ),
                    trailing: Icon(Icons.email_outlined, color: Colors.black,),

                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(

                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          spreadRadius: 3
                      )
                    ]

                ),
                width: MediaQuery.of(context).size.width*0.9,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: ListTile(
                    title: Text("Chat"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10,),
                        Text("Jacks send a new message",),
                      ],
                    ),
                    trailing: Icon(Icons.email_outlined, color: Colors.black,),

                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
