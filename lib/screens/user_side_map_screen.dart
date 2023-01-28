import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:share_bottel_admin/screens/home_page_screen.dart';

import 'bottom_nav_bar_screen.dart';

class UserSideMapScreen extends StatefulWidget {
  const UserSideMapScreen({Key? key}) : super(key: key);

  @override
  _UserSideMapScreenState createState() => _UserSideMapScreenState();
}

class _UserSideMapScreenState extends State<UserSideMapScreen> {
  TextEditingController _controller = TextEditingController();
  double lat = 30.9571199613358664;
  double lng = 70.9612549655962;
  var cameraPosition;
  Completer<GoogleMapController> _controler = Completer();
  static final CameraPosition kGooglePlex = CameraPosition(
      target: LatLng(30.9571199613358664, 70.9612549655962), zoom: 20);
  var lati;
  var langi;
  var address;




  @override
  Widget build(BuildContext context) {
    var _mediaQueryWidth = MediaQuery.of(context).size.width;
    var _mediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(alignment: Alignment.topCenter,children: [
        GoogleMap(
          myLocationEnabled: true,
          myLocationButtonEnabled: false,
          initialCameraPosition: kGooglePlex,
          mapType: MapType.normal,
          onMapCreated: (GoogleMapController controler) {
            _controler.complete(controler);
          },
          onLongPress:(latlng){
            lati = latlng.latitude;
            langi = latlng.longitude;
            setState(() async {
              final coordinate = Coordinates(lati, langi);
              var place = await Geocoder.local.findAddressesFromCoordinates(coordinate);
              var first = place.first;
              var snackdemo = SnackBar(
                content: Container(
                  height: 80,
                  child: Column(
                    children:[
                      Text('Latitude:   $lati'),
                      Text('Longitude:  $langi'),
                      Text("${first.addressLine}"),
                    ],
                  ),
                ),
                backgroundColor: Colors.purple,
                elevation: 8,
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.all(5),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackdemo);

            });
          },
        ),


        Positioned(
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (_) {
                      return BottomNavBarScreen();
                    }),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(left: 10,top: 10),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black,
                    size: 18,
                  ),
                ),
              ), Spacer(flex: 2,),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "Location",
                  style: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ),Spacer(flex: 3,),

            ],
          ),
        ),
        Positioned( top: 60,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: MediaQuery.of(context).size.width * .8,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(.5),
                  blurRadius: 1,
                  spreadRadius: 2,
                )
              ],
            ),
            child: TextFormField(
              controller: _controller,
              onFieldSubmitted: (String value) async {
                setState(() {});
                address = value;
                var add =
                await Geocoder.local.findAddressesFromQuery(address);
                var second = add.first;
                setState(() {
                  lat = add.first.coordinates.latitude!;
                  lng = add.first.coordinates.longitude!;
                });
                final GoogleMapController controller =
                await _controler.future;
                controller.animateCamera(CameraUpdate.newCameraPosition(
                    CameraPosition(target: LatLng(lat, lng), zoom: 14)));
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding:
                EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                hintText: "search places with name",
              ),
            ),
          ),
        ),
        Positioned(top: 620,
          child: GestureDetector( onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_){
              return BottomNavBarScreen();
            }),);
          },
            child: Container(
              child: Center(child: Text("Save",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17),)),
              height: 40,
              width: MediaQuery.of(context).size.width*.7,
              decoration: BoxDecoration(
                  color: Colors.black,borderRadius: BorderRadius.circular(30)
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
