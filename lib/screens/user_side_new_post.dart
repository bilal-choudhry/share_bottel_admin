import 'package:flutter/material.dart';

import 'home_page_screen.dart';

class UserSideNewPost extends StatefulWidget {

  @override
  _UserSideNewPostState createState() => _UserSideNewPostState();
}

class _UserSideNewPostState extends State<UserSideNewPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "New Post",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) {
                  return HomePageScreen();
                }));
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/post1.png",
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: TextField(
                      maxLength: 500,
                      maxLines: 10,
                      keyboardType: TextInputType.emailAddress,
                      autofocus: true,
                      decoration: InputDecoration(
                        fillColor: Color(0xffeaeaea),
                        filled: true,
                        border: InputBorder.none,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff015256).withOpacity(0.5),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "Write description about post",
                      ),
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, selectAll: true, paste: true),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.6,
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
                                    child: Text("Published", style: TextStyle(
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
                      child: Text("Publish")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
