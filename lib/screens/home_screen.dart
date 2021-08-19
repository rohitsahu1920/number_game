import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_game/screens/date_screen.dart';
import 'package:number_game/screens/math_screen.dart';
import 'package:number_game/screens/year_screen.dart';
import 'package:number_game/widget/main_screen_widget.dart';

import 'about_me.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.dehaze_rounded),
            onPressed: () {
              if(!_scaffoldKey.currentState.isDrawerOpen){
                _scaffoldKey.currentState.openDrawer();
              }else{
                Get.back();
              }
            },
          ),
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          title: Text("Math Fun"),
          backgroundColor: Colors.white,
        ),
        body: Scaffold(
          key: _scaffoldKey,
          drawer: _drawer(),
          body: Container(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                children: [
                  MainScreenWidget(
                    title: "Math fun",
                    startImage: "assets/equation.png",
                    onTap: () {
                      Get.to(MathScreen());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainScreenWidget(
                    title: "Date fun",
                    startImage: "assets/date.png",
                    onTap: () {
                      Get.to(DateScreen());
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  MainScreenWidget(
                    title: "Year fun",
                    startImage: "assets/year.png",
                    onTap: () {
                      Get.to(YearScreen());
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  _drawer() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("About Me"),
            trailing: Icon(Icons.navigate_next),
            onTap: () => Get.to(AboutMe()),
          ),
          // ListTile(
          //   title: Text("Contact Me"),
          //   trailing: Icon(Icons.navigate_next),
          // ),
        ],
      ),
    );
  }
}
