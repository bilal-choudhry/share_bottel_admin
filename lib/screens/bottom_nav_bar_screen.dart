import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_bottel_admin/screens/user_side_all_chats_screen.dart';
import 'package:share_bottel_admin/screens/user_side_camera_screen.dart';
import 'package:share_bottel_admin/screens/user_side_home_screen.dart';
import 'package:share_bottel_admin/screens/user_side_my_profile.dart';
import 'package:share_bottel_admin/screens/user_side_search_screen.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  var screenList=[
    UserSideHomeScreen(),
    UserSideSearchScreen(),
    UserSideAllChatsScreen(),
    UserSideMyProfile(),
  ];
  // var iconButton = false;
  var _bottomNavIndex = 0;
  // var _color = Colors.grey;
  // var heart = false;
  // PageController controller = PageController();
  // dynamic selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: screenList[_bottomNavIndex],
      bottomNavigationBar: StylishBottomBar(
        unselectedIconColor: Colors.grey,
        inkColor: Colors.black,
        currentIndex:_bottomNavIndex,
        onTap:(index){
          setState(() {
            _bottomNavIndex=index!;
          });
        },
        items: [
          AnimatedBarItems(
              icon: Icon(
                Icons.home,
              ),
              selectedColor: Colors.black,
              unSelectedColor: Colors.grey,
              backgroundColor: Colors.black,
              title: Text('Home', style: TextStyle(fontSize: 10, color: Colors.black),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.search,
              ),
              selectedColor: Colors.black,
              backgroundColor: Colors.black,
              unSelectedColor: Colors.grey,
              title: Text('Search', style: TextStyle(fontSize: 10, color: Colors.black),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.chat_outlined,
              ),
              backgroundColor: Colors.black,
              selectedColor: Colors.black,unSelectedColor: Colors.grey,
              title: Text('Chat',style: TextStyle(fontSize: 10, color: Colors.black),)),
          AnimatedBarItems(
              icon: Icon(
                Icons.person,
              ),
              backgroundColor: Colors.black,
              selectedColor: Colors.black,
              unSelectedColor: Colors.grey,
              title: Text('Profile',style: TextStyle(fontSize: 10, color: Colors.black),)),
          // BubbleBarItem(icon: Icon(Icons.home), title: Text('Home')),
          // BubbleBarItem(icon: Icon(Icons.add_circle_outline), title: Text('Add')),
          // BubbleBarItem(icon: Icon(Icons.person), title: Text('Profile')),

        ],
        // iconSize: 32,

        // barAnimation: BarAnimation.blink,
        iconStyle: IconStyle.animated,
        // // iconStyle: IconStyle.simple,
        // hasNotch: true,
        //
        // // iconSize: 25,
        barAnimation: BarAnimation.fade,
        // iconStyle: IconStyle.animated,
        // // iconStyle: IconStyle.animated,
        hasNotch: true,
        // fabLocation: StylishBarFabLocation.center,
        opacity: 0.3,
        //
        // //Bubble bar specific style properties
        // barStyle: BubbleBarStyle.horizotnal,
        // bubbleFillStyle: BubbleFillStyle.fill,

        // onTap: (index) {
        //   setState(() {
        //     selected = index;
        //
        //   });
        // },

      ),

        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (_){
            return CameraScreen();
          }));
        },
        backgroundColor: Colors.black,
        child: Icon(Icons.add , color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
