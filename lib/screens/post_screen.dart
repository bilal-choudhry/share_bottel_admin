import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/screen_admin_dashboard.dart';
import 'package:share_bottel_admin/screens/user_details.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  bool iconButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Posts",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return UserDetails();
            }));
          },
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              title: Text(
                "James Rock",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              subtitle: Text("07: 38 AM",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 10)),
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/jacob.png"),
              ),
              trailing: IconButton(
                icon: Icon(Icons.more_horiz),
                onPressed: () {},
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/post1.png",
                    ))),
          ),
          Expanded(
              child: Container(
            color: Colors.white,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        iconButton = !iconButton;
                      });
                    },
                    icon: (iconButton)
                        ? Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : Icon(
                            Icons.favorite_border,
                            color: Colors.black,
                          )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.comment_outlined,
                      color: Colors.black,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.ios_share_outlined,
                      color: Colors.black,
                    ))
              ],
            ),
          )),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
