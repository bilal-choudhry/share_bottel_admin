import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class UserSideNotificationsSettings extends StatefulWidget {


  @override
  _UserSideNotificationsSettingsState createState() =>
      _UserSideNotificationsSettingsState();
}

class _UserSideNotificationsSettingsState
    extends State<UserSideNotificationsSettings> {
  List<bool> _switchValues = List.generate(7, (_) => false);
  @override
  Widget build(BuildContext context) {

    var colorz = Colors.grey.withOpacity(.5);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications Settings",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTileSwitch(
              value: _switchValues[1],
              onChanged: (value) {
                setState(() {
                  _switchValues[1] = value;
                });
              },
              switchActiveColor: Colors.green,
              switchScale: 0.8,
              switchType: SwitchType.cupertino,
              title: const Text(
                'All Notifications', style: TextStyle(
                fontWeight: FontWeight.w400, fontSize: 18
              ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTileSwitch(
              value: _switchValues[2],
              onChanged: (value) {
                setState(() {
                  _switchValues[2] = value;
                });
              },
              switchActiveColor: Colors.green,
              switchScale: 0.8,
              switchType: SwitchType.cupertino,
              title: const Text(
                'Post Notification', style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 18
              ),
              ),
            ),
            Divider(
              thickness: 1,
            ),
            ListTileSwitch(
              value: _switchValues[3],
              onChanged: (value) {
                setState(() {
                  _switchValues[3] = value;
                });
              },
              switchActiveColor: Colors.green,
              switchScale: 0.8,
              switchType: SwitchType.cupertino,
              title: const Text(
                'Chat Notification', style: TextStyle(
                  fontWeight: FontWeight.w400, fontSize: 18
              ),
              ),
            ),
            Divider(
              thickness: 1,
            )

          ],
        ),
      ),
    );
  }
}
