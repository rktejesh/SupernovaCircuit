import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutUs(),
    );
  }
}

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedeff8),
      body: SafeArea(
        top: true,
        child: Padding(
               padding: const EdgeInsets.all(2.0),
           child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.all(5.0),
               child: Align(
                 alignment: Alignment.topCenter,
                 child: Text(
                   'About Us',
                   style: TextStyle(
                     fontFamily: 'Alegreya',
                     fontSize: 27,
                     color: const Color(0xff3f4239),
                   ),
                   textAlign: TextAlign.center,
                 ),
               ),
             ),
    SizedBox(
    width: double.infinity,
    child: Padding(
    padding: EdgeInsets.only(top: 30, bottom: 0, left: 10, right: 10),
    child: Container(
    decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(
    Radius.circular(25.0),
    ),
    boxShadow: [
    BoxShadow(
    color: Color.fromRGBO(17, 17, 26, 0.1),
    offset: Offset(0, 0),
    blurRadius: 16,
    )
    ]
    ),
    child: OutlinedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(25)),
          backgroundColor:
          MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25))),
        ),
        child: Text(
          'Fest-O-Mania is an application, which is used to have a solo app to view all technical contests and technical talks happening across different platforms.'

          'This app aims to promote and help grow the programming community worldwide.'

        'This app covers popolar coding websites such as codechef,codeforces,hackerearth and technical talks from youtube and many others platform.'

        'This app automatically updates all the technical contests and also allows to set remainder for it.'

        'MADE WITH LOVE IN INDIA',
          style: TextStyle(
            fontFamily: 'Alegreya',
            fontSize: 21,
            color: const Color(0xff3f4239),
          ),
        ),
    ),
    ),
    ),
    ),
           ]
           )
        ),
      ),
    );
  }
}

