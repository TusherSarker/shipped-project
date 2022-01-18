import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MotherNavigation extends StatefulWidget {
  const MotherNavigation({Key? key}) : super(key: key);

  @override
  _MotherNavigationState createState() => _MotherNavigationState();
}

class _MotherNavigationState extends State<MotherNavigation> {
  int _selectNavPosition = 0;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationDuration: Duration(
        milliseconds: 300,
      ),
      backgroundColor: Colors.cyan,
      items: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.add, size: 30)),
        Icon(Icons.list, size: 30),
        Icon(Icons.compare_arrows, size: 30),
      ],
      onTap: (int index) {
        setState(() {
          _selectNavPosition = index;
        });
      },
    );
  }
}
