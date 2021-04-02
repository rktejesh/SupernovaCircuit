import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/utils/Logo.dart';
import 'package:fest_o_mania/src/views/ui/ChoicePage.dart';
import 'dart:async';
import 'file:///C:/projects/SupernovaCircuit/fest_o_mania/lib/sample.dart';


class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }
  startTime() async {
    var duration = new Duration(seconds: 4);
    return new Timer(duration, route);
  }
  route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => ChoicePage()
    )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: AppLogo(),
    );
  }
}