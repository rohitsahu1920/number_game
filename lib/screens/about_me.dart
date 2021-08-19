import 'package:flutter/material.dart';

///Created by Rohit Sahu on 06-07-2021

class AboutMe extends StatelessWidget {
  const AboutMe({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              iconTheme: IconThemeData(
                color: Colors.black, //change your color here
              ),
              title: Text("About Me"),
              backgroundColor: Colors.white,
            ),
            body: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              color: Colors.white,
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Develop By BCTUBE", style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10,),
                  Text("Version 1.0.0", style: TextStyle(fontSize: 18)),
                ],
              ),
            )));
  }
}
