import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/ui/LoadingPage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ThemePage',
      theme: ThemeData(

      ),
      home: LoadingPage(),
    );
  }
}
