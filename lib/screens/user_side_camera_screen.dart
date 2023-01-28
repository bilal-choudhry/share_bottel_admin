import 'dart:io';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class CameraScreen extends StatefulWidget {
  @override
  CameraScreenState createState() => CameraScreenState();
}

class CameraScreenState extends State<CameraScreen> {
  /// Variables
  File? image;
  final cameras = availableCameras();
  /// Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: image == null ?
        Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    pickImage();
                  });
                },
                child: Text("PICK FROM GALLERY"),
              ),
              Container(
                height: 40.0,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() async {
                    captureImage();
                  });
                },
                child: Text("PICK FROM CAMERA"),
              )
            ],
          ),
        ) :
        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Spacer(flex: 1,),
                  IconButton(
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  Spacer(
                    flex: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45, left: 10),
                    child: Text(
                      "New Post",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Spacer(
                    flex: 5,
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Image.file(image!, fit: BoxFit.cover,
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 180,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(1),
                        blurRadius: .5,
                        spreadRadius: .5,
                      ),
                    ],
                    color: Colors.white54,
                  ),
                  child: TextField(
                    maxLines: 1000,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 5,top: 10),
                        border: InputBorder.none,
                        hintText: "Write description about post...."),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: true,
                    builder: (BuildContext dialogContext) {
                      return AlertDialog(
                        title: Text(''),
                        content: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset("assets/images/Group 457.png"),
                              SizedBox(
                                height: 10,
                              ),
                              TextButton(
                                child: Center(
                                  child: Text(
                                    'Published!',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.of(dialogContext)
                                      .pop(); // Dismiss alert dialog
                                },
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 40,
                  width: 230,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Publish",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Get from gallery
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  Future captureImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }
}