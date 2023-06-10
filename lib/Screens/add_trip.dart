import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/main.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class AddTrip extends StatefulWidget {
  const AddTrip({Key? key}) : super(key: key);

  @override
  State<AddTrip> createState() => _AddTripState();
}

class _AddTripState extends State<AddTrip> {
  // late final User currentUser;

  File? file;

  choosePhoto() async {
    Navigator.pop(context);
    File file = (await ImagePicker().pickImage(
        source: ImageSource.gallery, maxHeight: 675, maxWidth: 960)) as File;
    setState(() {
      this.file = file;
    });
  }

  takePic() async {
    Navigator.pop(context);
    File file = (await ImagePicker().pickImage(
        source: ImageSource.camera, maxHeight: 675, maxWidth: 960)) as File;
    setState(() {
      this.file = file;
    });
  }

  selectImage(parentContext) async {
    return showDialog(
        context: parentContext,
        builder: (context) {
          return SimpleDialog(
            title: Text("Add Trip"),
            children: [
              SimpleDialogOption(
                  child: Text("Photo with camera"),
                  onPressed: () async {
                    takePic();
                  }),
              SimpleDialogOption(
                  child: Text("Photo from gallery"),
                  onPressed: () async {
                    choosePhoto();
                  }),
              SimpleDialogOption(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }

  Container buildSplashScreen() {
    return Container(
      color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/wanderstock1.jpg'),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
              // style: ButtonStyle(
              //   shape:
              // ),
              child: Text(
                'Add Trip',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              onPressed: () => selectImage(context),
            ),
          ),
        ],
      ),
    );
  }

  clearImage() {
    setState(() {
      file = null;
    });
  }

  Scaffold buildUploadForm() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black12,
          ),
          onPressed: clearImage,
        ),
        title: Text(
          "Caption Post",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => print('pressed'),
            child: Text(
              "Post",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 220,
            width: MediaQuery.of(context).size.width * 0.8,
            child: Center(
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  decoration: BoxDecoration(
                    // image: DecorationImage(
                    //   fit: BoxFit.cover,
                    //   image: FileImage(file!),
                    // ),
                      image: DecorationImage(
                        image: AssetImage('assets/wanderstock1.jpg'),
                        fit: BoxFit.cover,
                      ),

                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          ListTile(
            leading: CircleAvatar(
              // backgroundImage: CachedNetworkImageProvider(currentUser.photoURL.toString()),
              backgroundImage: AssetImage('assets/wanderstock1.jpg'),
            ),
            title: Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write a caption...",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.pin_drop,
              color: Colors.orange,
              size: 35,
            ),
            title: Container(
              width: 250,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Where was this photo taken ?",
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          Container(
            width: 200,
            height: 100,
            alignment: Alignment.center,
            child: ElevatedButton.icon(
              label: Text("Use Current Location"),
              icon: Icon(
                Icons.my_location,
                color: Colors.indigo,
              ),
              onPressed: (){},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   backgroundColor: Colors.blue,
    // );
    // return file == null ? buildSplashScreen() : buildUploadForm();
    return buildUploadForm();
  }
}
