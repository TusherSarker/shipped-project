import 'package:flutter/material.dart';

import '../../home_page.dat.dart';

class ShowDisplay extends StatefulWidget {
  ShowDisplay({Key? key, this.ProductList, this.Index}) : super(key: key);
  final ProductList;
  final Index;

  @override
  State<ShowDisplay> createState() => _ShowDisplayState();
}

class _ShowDisplayState extends State<ShowDisplay> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            width: double.infinity,
            child: Image.asset(
              "${widget.ProductList[widget.Index]['Picture']}",
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${widget.ProductList[widget.Index]['Name']}",
                      style: TextStyle(fontSize: 32),
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
              )),
          Flexible(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                  )),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    '''${widget.ProductList[widget.Index]['Description']}''',
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1, color: Colors.cyan)),
                height: MediaQuery.of(context).size.height / 10,
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 32),
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
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20)),
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
                                          MediaQuery.of(context).size.height /
                                              4,
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
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height /
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
                                                  style: TextStyle(
                                                      color: Colors.cyan),
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
              ))
        ],
      ),
    ));
  }
}
