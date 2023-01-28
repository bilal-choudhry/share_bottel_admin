import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UserSideGoogleMaps extends StatefulWidget {
  const UserSideGoogleMaps({Key? key}) : super(key: key);

  @override
  _UserSideGoogleMapsState createState() => _UserSideGoogleMapsState();
}

class _UserSideGoogleMapsState extends State<UserSideGoogleMaps> {
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
    return Scaffold(
      body: GoogleMap(
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
            var snackDemo = SnackBar(
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
            ScaffoldMessenger.of(context).showSnackBar(snackDemo);

          });
        },
      ),
    );
  }
}
