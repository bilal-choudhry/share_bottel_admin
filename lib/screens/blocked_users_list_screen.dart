import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';
import 'package:share_bottel_admin/screens/user_details.dart';

class BlockedUsersListScreen extends StatefulWidget {

  @override
  _BlockedUsersListScreenState createState() => _BlockedUsersListScreenState();
}

class _BlockedUsersListScreenState extends State<BlockedUsersListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Blocked Users",
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
        children: ListTile.divideTiles(context: context, tiles: [
          ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)
                {
                  return UserDetails();
                }));
                /* Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return UserDetails();
                  }));*/
              },
              title: Text(
                "Jacob",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.black),
              ),
              subtitle: Text(
                "(0092) 567 1122",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              leading: CircleAvatar(
                child: Image.asset("assets/images/jacob.png"),
              ),
              trailing: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  primary: Colors.black,
                  side: BorderSide(color: Colors.black, width: 2), //<-- SEE HERE
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                  child: Text(
                    'Unblock',
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
              ),),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)
              {
                return UserDetails();
              }));
              /* Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return UserDetails();
                  }));*/
            },
            title: Text(
              "Jacob",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black),
            ),
            subtitle: Text(
              "(0092) 567 1122",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            leading: CircleAvatar(
              child: Image.asset("assets/images/jacob.png"),
            ),
            trailing: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                primary: Colors.black,
                side: BorderSide(color: Colors.black, width: 2), //<-- SEE HERE
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text(
                  'Unblock',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),),ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)
              {
                return UserDetails();
              }));
              /* Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return UserDetails();
                  }));*/
            },
            title: Text(
              "Jacob",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black),
            ),
            subtitle: Text(
              "(0092) 567 1122",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            leading: CircleAvatar(
              child: Image.asset("assets/images/jacob.png"),
            ),
            trailing: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                primary: Colors.black,
                side: BorderSide(color: Colors.black, width: 2), //<-- SEE HERE
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text(
                  'Unblock',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),),ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)
              {
                return UserDetails();
              }));
              /* Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return UserDetails();
                  }));*/
            },
            title: Text(
              "Jacob",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black),
            ),
            subtitle: Text(
              "(0092) 567 1122",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            leading: CircleAvatar(
              child: Image.asset("assets/images/jacob.png"),
            ),
            trailing: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                primary: Colors.black,
                side: BorderSide(color: Colors.black, width: 2), //<-- SEE HERE
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text(
                  'Unblock',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),),ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)
              {
                return UserDetails();
              }));
              /* Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return UserDetails();
                  }));*/
            },
            title: Text(
              "Jacob",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.black),
            ),
            subtitle: Text(
              "(0092) 567 1122",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
              ),
            ),
            leading: CircleAvatar(
              child: Image.asset("assets/images/jacob.png"),
            ),
            trailing: OutlinedButton(
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                ),
                primary: Colors.black,
                side: BorderSide(color: Colors.black, width: 2), //<-- SEE HERE
              ),
              onPressed: () {},
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Text(
                  'Unblock',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
            ),),]).toList(),
      ));
  }
}
