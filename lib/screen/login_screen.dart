import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shipped/screen/forgot_pass.dart';
import 'package:shipped/screen/signup_page.dart';
import '../home_page.dat.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpagedesign extends StatefulWidget {
  @override
  State<loginpagedesign> createState() => _loginpagedesignState();
}

class _loginpagedesignState extends State<loginpagedesign> {
  TextEditingController usernamecontroler = TextEditingController();
  TextEditingController passwordcontroler = TextEditingController();

  String superuser = 'admin';
  String superpass = 'admin';

  String user_name = '';
  String pass = '';

  getsharepref() async {
    final pref = await SharedPreferences.getInstance();
    setState(() {
      user_name = pref.getString('user_name') ?? '';
      pass = pref.getString('pass') ?? '';
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getsharepref();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 2.5,
                  child: Image.asset("assets/images/stay-home.png")),
              Padding(
                padding: const EdgeInsets.only(right: 14, left: 10),
                child: TextField(
                  controller: usernamecontroler,
                  decoration: InputDecoration(
                      labelText: "User Name",
                      hintText: "Enter Your Name",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 25, color: Color(0xFF000000)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 14, top: 22, left: 10),
                child: TextField(
                  controller: passwordcontroler,
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Enter Your Password",
                      border: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 25, color: Color(0xFF000000)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(18.0),
                child: Container(
                    alignment: Alignment.topRight,
                    child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgotpass()));
                        },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.andada(
                              textStyle: TextStyle(
                                  fontSize: 18, color: Colors.blueGrey)),
                        ))),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(22)),
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                    child: TextButton(
                  onPressed: () {
                    Fluttertoast.showToast(
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM_LEFT,
                        msg: usernamecontroler.text +
                            '\n' +
                            passwordcontroler.text);
                  },
                  child: Container(
                    child: TextButton(
                        onPressed: () {
                          if(usernamecontroler.text.isEmpty  || usernamecontroler.text.isEmpty){
                            Fluttertoast.showToast(
                              backgroundColor: Colors.cyan,
                              textColor: Colors.black,
                              msg: 'Please give a valid ID and Pass',
                              toastLength: Toast.LENGTH_LONG,
                            );
                          }
                         else if (usernamecontroler.text == user_name  &&
                              passwordcontroler.text == pass) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                            Fluttertoast.showToast(
                                msg: 'SuccessFull',
                                toastLength: Toast.LENGTH_LONG);
                          } else if (usernamecontroler.text == superuser &&
                              passwordcontroler.text == superpass) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => homepage()));
                            Fluttertoast.showToast(
                              backgroundColor: Colors.cyan,
                                msg: 'logIn Successfully',
                                textColor: Colors.black,
                                toastLength: Toast.LENGTH_LONG);
                          } else {
                            Fluttertoast.showToast(
                              backgroundColor: Colors.cyan,
                              textColor: Colors.black,
                              msg: 'Please give a valid ID and Pass',
                              toastLength: Toast.LENGTH_LONG,
                            );
                          }
                        },
                        child: Text('sign in',
                            style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 20,
                            )))),
                  ),
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => signupPage()));
                    },
                    child: Text('sign up',
                        style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20,
                        )))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
