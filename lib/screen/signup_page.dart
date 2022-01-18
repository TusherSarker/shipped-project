import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shipped/app_colour.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shipped/screen/login_screen.dart';

import '../home_page.dat.dart';

class signupPage extends StatefulWidget {
  @override
  State<signupPage> createState() => _signupPageState();
}

class _signupPageState extends State<signupPage> {
  TextEditingController NameControler = TextEditingController();
  TextEditingController passcontroler = TextEditingController();
  TextEditingController emailcontroler = TextEditingController();

  int redioValue = 0;

  DateTime? _dateTime;
  getDate() async {
    DateTime? date = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 30),
        lastDate: DateTime(DateTime.now().year + 2));

    setState(() {
      _dateTime = date;
    });
  }

  setShaPref() async {
    final pref = await SharedPreferences.getInstance();
    pref.setString("user_name", NameControler.text);
    pref.setString("pass", passcontroler.text);
    pref.setString("email", emailcontroler.text);
    pref.setString(
        "date",
        (_dateTime!.day).toString() +
            (_dateTime!.month).toString() +
            (_dateTime!.year).toString());
    pref.setString("gender", redioValue.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Center(child: Text("Sign up")),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Column(
                children: [
                  ListTile(
                    title: Center(
                        child: Text(
                      "Welcome to Shipped",
                      style: GoogleFonts.cantataOne(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24)),
                    )),
                    subtitle:
                        Center(child: Text("please input a valid information")),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Usrname",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Flexible(
                        child: TextField(
                          controller: NameControler,
                          scrollPhysics: BouncingScrollPhysics(),
                          decoration: InputDecoration(
                              labelText: "Username",
                              hintText: "Enter Your Fullname",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                    width: 25,
                                    color: Color(0xFF000000),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "E-mail",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.009,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailcontroler,
                decoration: InputDecoration(
                    labelText: "E-mail",
                    hintText: "Enter Your E-mail",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide:
                            BorderSide(width: 25, color: Color(0xFF000000)))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                controller: passcontroler,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter Your Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          width: 25,
                          color: Color(0xFF000000),
                        ))),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Date of birth",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.baseGrey60Color),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Container(
                      child: _dateTime == null
                          ? Flexible(
                              child: TextField(
                              keyboardType: TextInputType.datetime,
                            ))
                          : Text(
                              " ${_dateTime!.day} - ${_dateTime!.month} - ${_dateTime!.year} ",
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xAD5A5353)),
                            ),
                    ),
                    IconButton(
                        onPressed: () {
                          getDate();
                        },
                        icon: const Icon(
                          Icons.date_range_outlined,
                          size: 35,
                          color: AppColors.baseGrey60Color,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.baseGrey60Color),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Radio(
                            value: 1,
                            groupValue: redioValue,
                            onChanged: (value) {
                              setState(() {
                                redioValue = value as int;
                              });
                            }),
                        Padding(
                          padding: const EdgeInsets.only(right: 13),
                          child: Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8E8A8A)),
                          ),
                        ),
                        Radio(
                            value: 2,
                            groupValue: redioValue,
                            onChanged: (value) {
                              setState(() {
                                redioValue = value as int;
                              });
                            }),
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            "FeMale",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xFF8E8A8A)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    border: Border.all(color: AppColors.baseGrey60Color),
                    borderRadius: BorderRadius.circular(20)),
                child: TextButton(
                    onPressed: () {
                      setShaPref();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginpagedesign()));
                    },
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(fontSize: 18, color: Color(0xFFFFFFFF)),
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
