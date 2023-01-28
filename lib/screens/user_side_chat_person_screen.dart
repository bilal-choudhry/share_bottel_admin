import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserSideChatPersonScreen extends StatefulWidget {
  @override
  _UserSideChatPersonScreenState createState() => _UserSideChatPersonScreenState();
}

class _UserSideChatPersonScreenState extends State<UserSideChatPersonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          title: Text(
            "Ryan Seller",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: CircleAvatar(
                child: Image.asset("assets/images/jacob.png"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(

                      children: [Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width*1,
                          child: Wrap(children: [
                            Container(
                              margin:EdgeInsets.only(left: MediaQuery.of(context).size.width*0.3),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 6,
                                        spreadRadius: 4,
                                        offset: Offset(0, 3))
                                  ]),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12)
                                  ),
                                  SizedBox(height: 5,),
                                  Text("9 minutes ago", style: TextStyle(
                                      color: Colors.white, fontSize: 8))
                                ],
                              ),
                            ),
                          ],),),
                        Container(
                          margin:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.3),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width*1,
                          child: Wrap(children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffD7D7D7),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(12),
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                        offset: Offset(0, 3
                                        ))
                                  ]),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "Hello HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12)
                                  ),
                                  SizedBox(height: 5,),
                                  Text("9 minutes ago", style: TextStyle(
                                      color: Colors.black, fontSize: 8))
                                ],
                              ),
                            ),
                          ],),),
                        Container(
                          margin:EdgeInsets.only(right: MediaQuery.of(context).size.width*0.3),
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.all(20),
                          width: MediaQuery.of(context).size.width*1,
                          child: Wrap(children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffD7D7D7),
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(12),
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black.withOpacity(0.2),
                                        blurRadius: 4,
                                        spreadRadius: 3,
                                        offset: Offset(0, 3
                                        ))
                                  ]),
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                      "Hello HelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHelloHello",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12)
                                  ),
                                  SizedBox(height: 5,),
                                  Text("9 minutes ago", style: TextStyle(
                                      color: Colors.black, fontSize: 8))
                                ],
                              ),
                            ),
                          ],),),

                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 3)
                  ]),
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        autofocus: true,
                        decoration: InputDecoration(
                          fillColor: Color(0xffeaeaea),
                          filled: true,
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Write your message here",
                        ),
                        toolbarOptions: ToolbarOptions(
                            copy: true,
                            cut: true,
                            selectAll: true,
                            paste: true),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.link_rounded,
                          color: Colors.black,
                        )),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.black,
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        child: Text("Send"))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
