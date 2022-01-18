import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shipped/screen/about_us.dart';

import '../home_page.dat.dart';

class MotherDrawer extends StatefulWidget {
  const MotherDrawer({Key? key}) : super(key: key);

  @override
  State<MotherDrawer> createState() => _MotherDrawerState();
}

class _MotherDrawerState extends State<MotherDrawer> {
  getsharepref() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      user_name = pref.getString('user_name') ?? '';
      email = pref.getString('email') ?? '';
    });
  }

  String user_name = '';
  String email = '';
  File? imageFile;
  @override
  void initState() {
    // TODO: implement initState
    getsharepref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.cyan),
            accountName: Text(
              "$user_name",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text(
              "$email",
              style: TextStyle(color: Colors.black),
            ),
            currentAccountPicture: Container(
              child: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.person),
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => homepage()));
            },
            child: const ListTile(
              title: Text("HomePage"),
              leading: Icon(Icons.home, color: Colors.blueGrey),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text("My account"),
              leading: Icon(Icons.person, color: Colors.blue),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text("My orders"),
              leading: Icon(Icons.shopping_basket, color: Colors.orange),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard, color: Colors.orangeAccent),
            ),
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text("Favourites"),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          Divider(
            thickness: 8,
          ),
          InkWell(
            onTap: () {},
            child: const ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings, color: Colors.blue),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()));
            },
            child: const ListTile(
              title: Text("About Us"),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }

  _getFromGallery() async {
    PickedFile? pickFile = await ImagePicker()
        .getImage(source: ImageSource.gallery, maxHeight: 300, maxWidth: 300);
    if (pickFile != null) {
      setState(() {
        imageFile = File(pickFile.path);
      });
    }
  }

  _getFromCamera() async {
    PickedFile? pickFile = await ImagePicker()
        .getImage(source: ImageSource.camera, maxHeight: 300, maxWidth: 300);
    if (pickFile != null) {
      setState(() {
        imageFile = File(pickFile.path);
      });
    }
  }

  Widget displaySignatureFile() {
    return SizedBox(
      height: 480,
      width: 480,
      child: imageFile == null
          ? Icon(
              Icons.camera_alt_outlined,
              size: 100,
            )
          : ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.file(
                imageFile!,
                fit: BoxFit.fill,
              ),
            ),
    );
  }
}
