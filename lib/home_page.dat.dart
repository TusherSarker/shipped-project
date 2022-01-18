import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shipped/Custom_Widzed/mother_drawer.dart';
import 'package:shipped/components/carousel_slider.dart';
import 'package:shipped/components/listview_horizontal.dart';
import 'Iphones/appale_phones.dart';

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _selectNavPosition = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        elevation: 0.0,
        title: Text("Shipped"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      drawer: MotherDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: ListView(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: MediaQuery.of(context).size.height / 5,
                      child: carousel()),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Categories"),
                  ),
                  HorizontalListview(),
                ],
              ),
            ),
            Flexible(flex: 3, child: appaleMobile())
          ],
        ),
      ),
    );
  }
}
