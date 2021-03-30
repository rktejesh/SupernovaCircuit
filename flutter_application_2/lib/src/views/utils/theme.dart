import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/views/ui/LoadingPage.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          hintColor: Color(0xff727171),
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.deepPurple,
            shape: RoundedRectangleBorder(),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xffff0266)),
              elevation: MaterialStateProperty.all(5),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white70),
            elevation: MaterialStateProperty.all(1),
            shape: MaterialStateProperty.all(
              ContinuousRectangleBorder(),
            ),
          ))),
      home: LoadingPage(),
    );
  }
}
