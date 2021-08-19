import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:number_game/http/request.dart';
import 'package:number_game/http/urls.dart';
import 'package:number_game/utils/common.dart';
import 'package:number_game/utils/methods.dart';

///Created by Rohit Sahu on 04-07-2021

class MathScreen extends StatefulWidget {
  const MathScreen({Key key}) : super(key: key);

  @override
  _MathScreenState createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  final Request _apiClient = Get.put(Request());
  String text = "Please ";

  @override
  void initState() {
    mathFun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text("Math Fun"),
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          alignment: Alignment.center,
          color: Colors.white,
          child: Text(text, style: TextStyle(fontSize: 24)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh, color: Colors.white,),
        backgroundColor: Colors.black,
        onPressed: () {
          mathFun();
        },
      ),
    );
  }

  mathFun() async {
    String out;
    if (await Common.isNetworkAvailable()) {
      Future.delayed(Duration.zero, () => Common.dialogLoader(context));
      final url = urlBase + math;
      try {
        Map<String, dynamic> response = await _apiClient.get(url);
        log(response);
        out = response['text'].toString();
        Get.back();
      } catch (error) {
        Get.back();
        log(error);
        Common.toast("Somthing went Wrong");
      }
      setState(() {
        text = out;
      });
    }
  }


}
