import 'package:flutter/material.dart';

class Posts extends StatefulWidget {
  const Posts({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  bool iconButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
