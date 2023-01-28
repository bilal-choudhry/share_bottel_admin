import 'package:flutter/material.dart';

class UserSideStoryViewScreen extends StatefulWidget {
  @override
  _UserSideStoryViewScreenState createState() =>
      _UserSideStoryViewScreenState();
}

class _UserSideStoryViewScreenState extends State<UserSideStoryViewScreen> {
  var _color = Colors.white;
  var _click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 1,
            width: MediaQuery.of(context).size.width * 1,
            child: Image.asset("assets/images/story.png", fit: BoxFit.cover),
          ),
        ),

        Positioned(
          right: 10,
          bottom: 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Container(
                  height: 50,
                  child: Image.asset(
                    "assets/images/storyicon.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    _click = !_click;

                    setState(() {
                      if (_click == true) {
                        _color = Colors.red;
                      } else
                        _color = Colors.white;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_outlined,
                    size: 40,
                    color: _color,
                  )),
              Text(
                "  Like",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.insert_comment_sharp,
                    size: 40,
                    color: Colors.white,
                  )),
              Text(
                "Request",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.ios_share,
                    size: 40,
                    color: Colors.white,
                  )),
              Text(
                " Share",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              )
            ],
          ),
        ),
        Positioned(
          right: 10,
          bottom: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

            ],
          ),
        ),
      ]),
    );
  }
}
