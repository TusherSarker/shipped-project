import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'accessories_display.dart';

class Accessories extends StatelessWidget {
  var ProductListtttt = [
    {
      "Name": 'Blue ps4 Console',
      "Picture": 'assets/images/Ps/ps4_console_blue_1.png',
      "Price": '5,500৳',
      "OldPrice": '5,800৳',
      "DcPrice": '6%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description":
          'This is most comfortable, intuitive controller ever designed. Now even better, and available in a range of colours and styles.'
    },
    {
      "Name": 'White ps4 Console',
      "Picture": 'assets/images/Ps/ps4_console_white_1.png',
      "Price": '6,500৳',
      "OldPrice": '6,800৳',
      "DcPrice": '6%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description":
          'This is most comfortable, intuitive controller ever designed. Now even better, and available in a range of colours and styles.'
    },
    {
      "Name": 'White ps5 Console',
      "Picture": 'assets/images/Ps/ps5_console_white_1.png',
      "Price": '7,000৳',
      "OldPrice": '7,800৳',
      "DcPrice": '10%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description":
          'The latest PlayStation 5 DualSense Wireless Controller offers immersive haptic feedback, dynamic adaptive triggers and a built-in microphone, all integrated into an iconic design. This Controller provides you physically responsive feedback to your in-game actions with dual actuators which replace traditional rumble motors. In your hands, This dynamic vibrations can simulate the feeling of everything from environments to the recoil of different weapons. This new The DualSense wireless controller retains many DUALSHOCK 4 features, returning for a new generation of play. You can connecting a headset to the 3.5-mm jack and Easily switch off voice capture at a moment\'s notice with the dedicated mute button. This Wireless Controller has built-in battery (Charge and play, now via USB Type-C) and also this controller has Integrated speaker, so that you can Select games take on an extra dimension with higher-fidelity sound effects bursting from the controller. Here, It Brings intuitive motion control to supported games with the built-in accelerometer and gyroscope. It\'s Experience varying levels of force and tension as you interact with your in-game gear and environments. From pulling back an increasingly tight bowstring to hitting the brakes on a speeding car, feel physically connected to your on-screen actions. With the create button, you can Capture and broadcast. Building on the success of the pioneering SHARE button, "create" offers players more ways to produce gaming content and broadcast their adventures live to the world. Take control with an evolved, two-tone design that combines an iconic, intuitive layout with enhanced sticks and a reimagined light bar. This PlayStation 5 DualSense Wireless Controller has no warranty.'
    },
    {
      "Name": 'White ps5 Console',
      "Picture": 'assets/images/Ps/ps5_console_white_1.png',
      "Price": '7,000৳',
      "OldPrice": '7,800৳',
      "DcPrice": '10%',
      "DesName": 'DUALSHOCK 4 Wireless Controller',
      "Description":
          'The latest PlayStation 5 DualSense Wireless Controller offers immersive haptic feedback, dynamic adaptive triggers and a built-in microphone, all integrated into an iconic design. This Controller provides you physically responsive feedback to your in-game actions with dual actuators which replace traditional rumble motors. In your hands, This dynamic vibrations can simulate the feeling of everything from environments to the recoil of different weapons. This new The DualSense wireless controller retains many DUALSHOCK 4 features, returning for a new generation of play. You can connecting a headset to the 3.5-mm jack and Easily switch off voice capture at a moment\'s notice with the dedicated mute button. This Wireless Controller has built-in battery (Charge and play, now via USB Type-C) and also this controller has Integrated speaker, so that you can Select games take on an extra dimension with higher-fidelity sound effects bursting from the controller. Here, It Brings intuitive motion control to supported games with the built-in accelerometer and gyroscope. It\'s Experience varying levels of force and tension as you interact with your in-game gear and environments. From pulling back an increasingly tight bowstring to hitting the brakes on a speeding car, feel physically connected to your on-screen actions. With the create button, you can Capture and broadcast. Building on the success of the pioneering SHARE button, "create" offers players more ways to produce gaming content and broadcast their adventures live to the world. Take control with an evolved, two-tone design that combines an iconic, intuitive layout with enhanced sticks and a reimagined light bar. This PlayStation 5 DualSense Wireless Controller has no warranty.'
    },
  ];
  var Index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Product list")),
        backgroundColor: Colors.cyan,
      ),
      body: ListView.builder(
          itemExtent: 400,
          padding: EdgeInsets.all(30.0),
          physics: BouncingScrollPhysics(),
          itemCount: ProductListtttt.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AssoriesDisplay(
                                  Index: index,
                                  ProductList: ProductListtttt,
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
                              '${ProductListtttt[index]['DcPrice']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  //color: Colors.cyan,
                                  fontSize: 32),
                            ),
                            Text(
                              '${ProductListtttt[index]['DcPrice']}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  //color: Colors.cyan,
                                  fontSize: 32),
                            ),
                          ],
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: double.infinity,
                          child: Image.asset(
                            '${ProductListtttt[index]['Picture']}',
                          ),
                        ),
                        Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(left: 14),
                            child: Center(
                              child: Text('${ProductListtttt[index]['Name']}',
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
                            Row(
                              children: [
                                Text(
                                  "price- ",
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  ''' ${ProductListtttt[index]['Price']}''',
                                  style: TextStyle(
                                    color: Colors.cyan,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'regular price- ',
                                  style: TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '${ProductListtttt[index]['OldPrice']}',
                                  style: TextStyle(
                                      color: Colors.red,
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
