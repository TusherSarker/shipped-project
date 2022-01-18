import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.white,),
      body: Stack(
        children: [
          Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    )),
                child: ListView(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.06,
                    ),
                    TextButton(onPressed: (){},
                      child: ListTile(
                        leading: SvgPicture.asset('assets/svg/User.svg',height: 22,color: Colors.orange,),
                        title: Text("My Account",style: TextStyle(fontWeight: FontWeight.w500)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    TextButton(onPressed: (){},
                      child: ListTile(
                        leading: Icon(Icons.notifications_none,size: 30,color: Colors.orange,),
                        title: Text("Notification",style: TextStyle(fontWeight: FontWeight.w500)),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    TextButton(onPressed: (){},
                      child: ListTile(
                        leading: SvgPicture.asset('assets/svg/Settings.svg',height: 22,color: Colors.orange,),
                        title: Text("My Account"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    TextButton(onPressed: (){},
                      child: ListTile(
                        leading: SvgPicture.asset('assets/svg/User.svg',height: 22,color: Colors.orange,),
                        title: Text("My Account"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                    TextButton(onPressed: (){},
                      child: ListTile(
                        leading: SvgPicture.asset('assets/svg/User.svg',height: 22,color: Colors.orange,),
                        title: Text("My Account"),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
