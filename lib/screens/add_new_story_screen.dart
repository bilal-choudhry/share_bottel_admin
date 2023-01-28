import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';

class AddNewStoryScreen extends StatefulWidget {
  @override
  _AddNewStoryScreenState createState() => _AddNewStoryScreenState();
}

class _AddNewStoryScreenState extends State<AddNewStoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text(
          "New Story",
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
                  height: MediaQuery.of(context).size.height * 0.5,
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
                        hintText: "Mention Here",
                      ),
                      toolbarOptions: ToolbarOptions(
                          copy: true, cut: true, selectAll: true, paste: true),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.9,
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 120, vertical: 20),
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
