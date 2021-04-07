import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/ui/LoadingPage.dart';
import 'package:fest_o_mania/src/views/ui/MainPage.dart';

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