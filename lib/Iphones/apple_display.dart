import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page.dat.dart';

class IphoneListViewClass extends StatefulWidget {
  final IphoneList;
  final index;
  IphoneListViewClass({required this.IphoneList, required this.index});

  @override
  State<IphoneListViewClass> createState() => _IphoneListViewClassState();
}

class _IphoneListViewClassState extends State<IphoneListViewClass> {
  int counter = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Flexible(
            flex: 4,
            child: Container(
              child:
                  Image.asset('${widget.IphoneList[widget.index]['Picture']}'),
            ),
          ),
          Column(
            children: [
              Text(
                ' ${widget.IphoneList[widget.index]['Name']}',
                style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * .06,
                    width: size.width / 2.5,
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Text(
                        '${widget.IphoneList[widget.index]['Price']}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  RatingBar.builder(
                      itemSize: 25,
                      maxRating: 1,
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                      onRatingUpdate: (rating) {})
                ],
              )
            ],
          ),
          Flexible(
            flex: 4,
            child: Container(
              width: size.width,
              color: Color(0xFFFFFFFF),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Specification ",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black45),
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                      context: context,
                                      builder: (context) {
                                        return ListView(
                                          children: [
                                            ListTile(
                                              title: Text("Brand"),
                                              subtitle: Text(""
                                                  " Appale"),
                                            ),
                                            ListTile(
                                              title: Text("Model"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Model']}'),
                                            ),
                                            ListTile(
                                              title: Text("RAM Memory"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Internal Memory']}'),
                                            ),
                                            ListTile(
                                              title: Text("Operating System"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Platform']}'),
                                            ),
                                            ListTile(
                                              title: Text("Storage Capacity"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Internal Memory']}'),
                                            ),
                                            ListTile(
                                              title: Text("Battery Capacity"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Battery']}'),
                                            ),
                                            ListTile(
                                              title: Text("Number of SIM"),
                                              subtitle: Text(
                                                  '${widget.IphoneList[widget.index]['SIM']}'),
                                            ),
                                            ListTile(
                                              title: Text("Camera (front)"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Selfie Camera']}'),
                                            ),
                                            ListTile(
                                              title: Text("Camera (back)"),
                                              subtitle: Text(
                                                  ' ${widget.IphoneList[widget.index]['Main Camera']}'),
                                            ),
                                          ],
                                        );
                                      });
                                },
                                child: Text("Brand,RAM Memory,Operating System",
                                    style: TextStyle(color: Colors.black87)),
                              ),
                              Icon(Icons.arrow_right)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Installment",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black45),
                          ),
                          Row(
                            children: [
                              Text(
                                  "Up to 12 months, as low as 12,444 taka\n  per month.",
                                  style: TextStyle(color: Color(0xFF363636))),
                              Icon(Icons.arrow_right)
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black45),
                          ),
                          InkWell(
                            child: Text("Home Delivery, 3 - 5 days"),
                          ),
                          Text("Taka-35")
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Service",
                            style:
                                TextStyle(fontSize: 18, color: Colors.black45),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("100% Authentic"),
                              Text("10 days easy return"),
                              Text("1 Year Brand Warrenty"),
                            ],
                          ),
                          Icon(Icons.arrow_right)
                        ],
                      ),
                      SizedBox(
                        height: size.height * .03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(),
            height: size.height * .07,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (counter >= 2) {
                            counter--;
                          }
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(color: Colors.black, fontSize: 32),
                      ),
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    Text(
                      "$counter",
                      style: TextStyle(fontSize: 24),
                    ),
                    VerticalDivider(
                      thickness: 1,
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if (counter < 10) {
                            counter++;
                          }
                        });
                      },
                      child: Text("+",
                          style: TextStyle(color: Colors.black, fontSize: 20)),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                      border: Border.all(width: 1, color: Colors.cyan)),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                "Order added successfully",
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23),
                              ),
                              content: Container(
                                height: MediaQuery.of(context).size.height / 4,
                                child: Column(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height /
                                                10,
                                        child: Image.asset(
                                          "assets/images/verified-symbol.png",
                                        )),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              16,
                                    ),
                                    Row(
                                      children: [
                                        Text("Want To Back Homepage "),
                                        InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        homepage()));
                                          },
                                          child: Text(
                                            "click here",
                                            style:
                                                TextStyle(color: Colors.cyan),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text(
                      'Order now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
