import 'package:flutter/material.dart';

import '../../home_page.dat.dart';

class DressDisplay extends StatefulWidget {
  DressDisplay({Key? key, this.ProductList, this.Index}) : super(key: key);
  final ProductList;
  final Index;

  @override
  State<DressDisplay> createState() => _DressDisplayState();
}

class _DressDisplayState extends State<DressDisplay> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2.5,
                width: double.infinity,
                child: Image.asset(
                  "${widget.ProductList[widget.Index]['Picture']}",
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${widget.ProductList[widget.Index]['Name']}",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Taka ${widget.ProductList[widget.Index]['Price']}'),
                          Text(
                            '''${widget.ProductList[widget.Index]['OldPrice']}''',
                            style: TextStyle(
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.lineThrough),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height / 4,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                )),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Text(
                    '''${widget.ProductList[widget.Index]['Description']}''',
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: Colors.cyan)),
            height: MediaQuery.of(context).size.height / 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            if (counter >= 1) {
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
                            style:
                                TextStyle(color: Colors.black, fontSize: 20)),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(10),
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
                                  height:
                                      MediaQuery.of(context).size.height / 4,
                                  child: Column(
                                    children: [
                                      Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height /
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
                        'Add to Cart',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
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
