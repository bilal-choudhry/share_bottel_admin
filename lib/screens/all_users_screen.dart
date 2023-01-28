import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/user_details.dart';
import 'home_page_screen.dart';

class AllUsersScreen extends StatefulWidget {
  @override
  _AllUsersScreenState createState() => _AllUsersScreenState();
}

class _AllUsersScreenState extends State<AllUsersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
                    return HomePageScreen();
                  }));
                },
              );
            },
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          elevation: 0,
          centerTitle: true,
          title: Text(
            "Users",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ))
          ],
        ),
        backgroundColor: Colors.white,
        body: ListView(
          children: ListTile.divideTiles(context: context, tiles: [
            ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) {
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
                trailing: Text(
                    "Block",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.red),
                  ),
                ),ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
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
              trailing: Text(
                "Block",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
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
              trailing: Text(
                "Block",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
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
              trailing: Text(
                "Block",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
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
              trailing: Text(
                "Block",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),ListTile(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
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
              trailing: Text(
                "Block",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    color: Colors.red),
              ),
            ),
          ]).toList(),
        ));
  }
}
