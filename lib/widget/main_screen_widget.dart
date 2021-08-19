import 'package:flutter/material.dart';

///Created by Rohit Sahu on 05-07-2021

class MainScreenWidget extends StatelessWidget {

  final String startImage;
  final String title;
  final Function onTap;

  const MainScreenWidget({Key key,  this.startImage, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Row(
            children: [
              Row(
                children: [
                  Image.asset(startImage, width: 60, height: 60,),
                  SizedBox(
                    width: 10,
                  ),
                  Text(title, style: TextStyle(fontSize: 18),),
                ]
              ),
              Spacer(),
              Icon(Icons.navigate_next)
            ],
          ),
        ),
      ),
    );
  }
}
