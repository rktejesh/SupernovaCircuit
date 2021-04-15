import 'package:fest_o_mania/src/views/ui/config.dart';
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
      home: HackathonsPage(),
    );
  }
}

class HackathonsPage extends StatefulWidget {
  @override
  _HackathonsPageState createState() => _HackathonsPageState();
}

class _HackathonsPageState extends State<HackathonsPage> {
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
                        'Hackathons',
                        style: TextStyle(
                          fontFamily: 'Alegreya',
                          fontSize: 27,
                          color: const Color(0xff3f4239),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Expanded(
                      child: SizedBox(
                        height: 200.0,
                        child: ListView.builder(
                          itemCount: HackathonImages.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              padding:
                              EdgeInsets.only(bottom: 20, left: 20, right: 20),
                              height: 200,
                              width: double.infinity,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(HackathonImages[index]),
                                      fit: BoxFit.fill),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      )
                  )
                ]
            )
        ),
      ),
    );
  }
}
