import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UserSideOtherProfileViewScreen extends StatefulWidget {
  @override
  _UserSideOtherProfileViewScreenState createState() =>
      _UserSideOtherProfileViewScreenState();
}

class _UserSideOtherProfileViewScreenState
    extends State<UserSideOtherProfileViewScreen> {
  var iconButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            margin: EdgeInsets.all(10),
            height: 20,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Colors.white.withOpacity(0.26)),
            child: Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child: Stack(
                  children: [
                  Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(50)),
                      color: Colors.black),
                  ),
                    Positioned(
                      left: 60,
                      top: 60,
                      child: Container(
                        width: 300,
                        child: ListTile(
                          leading: CircleAvatar(
                              child: Image.asset(
                                "assets/images/jacob.png",
                                fit: BoxFit.cover,
                              )),
                          title: Text(
                            "Monika Stuff",
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                "Blogger",
                                style: TextStyle(color: Colors.white),
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right:30,
                      top: 110,
                      child: Container(
                        child: OutlinedButton(
                          child: Text('+ Follow'),
                          style: OutlinedButton.styleFrom(
                              primary: Colors.white,
                              backgroundColor: Colors.transparent,
                              side: BorderSide(color: Colors.white, width: 2),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))
                          ),
                          onPressed: () {
                            print('Pressed');
                          },
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25)

                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                color: Colors.black,
                child: Container(
                  width: MediaQuery.of(context).size.width*1,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/hwaiCity.png"),
                          ),
                          title: Row(
                            children: [
                              Text(
                                "Jacob James . ",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.0),
                                child: Text(
                                  " Follow ",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                          subtitle: Text("09:07 AM"),
                          trailing: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_horiz_rounded),
                            color: Color(0xff8C8C8C),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/post1.png"),
                                  fit: BoxFit.cover)),
                          child: Stack(
                            children: [
                              Positioned(
                                  right: 12,
                                  top: 13,
                                  child: SvgPicture.asset("assets/svg/chat.svg")),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.08,
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
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
