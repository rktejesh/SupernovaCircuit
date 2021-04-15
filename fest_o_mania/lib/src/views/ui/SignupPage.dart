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
      home: SignupPage(),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top:5.0,left: 20,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage("lib/src/assets/images/Untitled design.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Text(
                        'Welcome',
                        style: TextStyle(
                          fontFamily: 'Alegreya',
                          fontSize: 40,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 20, bottom: 20),
                        labelText: 'Username',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        labelStyle: TextStyle(
                            fontSize: 23,
                            color: Colors.white
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(23.0),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 20, bottom: 20),
                        labelText: 'Email',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        labelStyle: TextStyle(
                            fontSize: 23,
                            color: Colors.white
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(23),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 20, bottom: 20),
                        labelText: 'Password',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        labelStyle: TextStyle(
                            fontSize: 23,
                            color: Colors.white
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(23),
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 20, bottom: 20),
                        labelText: 'Confirm Password',
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        disabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                        labelStyle: TextStyle(
                            fontSize: 23,
                            color: Colors.white
                        )
                    ),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 20, left: 60, right: 60),
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
                      child: TextButton(
                        onPressed: () {

                        },
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.only(left: 10, bottom: 5, top: 5,right: 10)),
                          backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25))),
                        ),
                        child: Text(
                          'Signup',
                          style: TextStyle(
                            fontFamily: 'Alegreya',
                            fontSize: 35,
                            color: const Color(0xff1c69f0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
