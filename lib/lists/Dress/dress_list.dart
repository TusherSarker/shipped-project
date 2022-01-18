import 'package:flutter/material.dart';
import 'dress_display.dart';

class DressList extends StatefulWidget {
  const DressList({Key? key}) : super(key: key);

  @override
  _DressListState createState() => _DressListState();
}

class _DressListState extends State<DressList> {
  var Productlist = [
    {
      "Name": 'Dress',
      "Picture": 'assets/images/product/dress1.jpeg',
      "Price": '4000',
      "OldPrice": '5000',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'dress',
      "Picture": 'assets/images/product/dress2.jpeg',
      "Price": '1800',
      "OldPrice": '2000',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt1.jpeg',
      "Price": '1800',
      "OldPrice": '2000',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt2.jpeg',
      "Price": '1299',
      "OldPrice": '1299',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt1.jpeg',
      "Price": '1800',
      "OldPrice": '2000',
      "DcPrice": '20%',
      "Description": 'this is empty'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt2.jpeg',
      "Price": '1299',
      "OldPrice": '1299',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt1.jpeg',
      "Price": '1800',
      "OldPrice": '2000',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt2.jpeg',
      "Price": '1299',
      "OldPrice": '1299',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },
    {
      "Name": 'skt',
      "Picture": 'assets/images/product/skt1.jpeg',
      "Price": '1800',
      "OldPrice": '2000',
      "DcPrice": '20%',
      "Description": 'A dress can be any one-piece garment containing a skirt of any length, and can be formal or casual. A dress can have sleeves, straps, or be held up with elastic around the chest, leaving the shoulders bare. ... The hemlines of dresses vary depending on modesty, weather, fashion or the personal taste of the wearer.'
    },

  ];
  var Index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Dress")),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
          itemExtent: 400,
          padding: EdgeInsets.all(20.0),
          physics: BouncingScrollPhysics(),
          itemCount: Productlist.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DressDisplay(
                                  Index: index,
                                  ProductList: Productlist,
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(0, 3))
                        ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "    DISCOUNT  DISCOUNT  DISCOUNT  DISCOUNT ",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${Productlist[index]['DcPrice']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                  fontSize: 32),
                            ),
                            Text(
                              '${Productlist[index]['DcPrice']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                  fontSize: 32),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: double.infinity,
                          child: Image.asset(
                            '${Productlist[index]['Picture']}',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 14),
                            child: Center(
                              child: Text('${Productlist[index]['Name']}',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline)),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .03,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              ''' ${Productlist[index]['Price']}''',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'Regular Price=  ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                Text(
                                  '${Productlist[index]['OldPrice']}',
                                  style: TextStyle(
                                      color: Colors.amber,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }
}
