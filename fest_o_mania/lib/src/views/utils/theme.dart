import 'package:fest_o_mania/sample.dart';
import 'package:fest_o_mania/src/views/ui/ChoicePage.dart';
import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/ui/LoadingPage.dart';
import 'package:fest_o_mania/src/views/ui/LoginPage.dart';
import 'file:///C:/projects/SupernovaCircuit/fest_o_mania/lib/sample.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThemePage',
      theme: ThemeData(
        fontFamily: 'Alegreya',
      ),
      home: LoadingPage(),
    );
  }
}