import 'dart:async';
import 'dart:ui';
import 'package:fest_o_mania/src/views/utils/LandingPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  String _username = "";
  String _email = "";
  String _password = "";
  String _confirmPassword = "";
  final FirebaseAuth auth = FirebaseAuth.instance;
  User user;
  Timer timer;

  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
              child: AlertDialog(
                content: Text(
                    "An Email has been sent to ${user.email} please verify"),
                actions: [
                  TextButton(
                    child: Text('ok'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 20, right: 20),
            child: Form(
              autovalidateMode: AutovalidateMode.always, key: formkey ,
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
                              image: const AssetImage(
                                  "lib/src/assets/images/Untitled design.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
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

                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 30, right: 20, top: 20, bottom: 20),
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
                            errorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            labelStyle:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        onChanged: (value) {
                          setState(() {
                            _username = value.trim();
                          });
                        },
                        validator: RequiredValidator(errorText: "Required"),
                        ),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 30, right: 20, top: 20, bottom: 20),
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
                            errorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            labelStyle:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        onChanged: (value) {
                          setState(() {
                            _email = value.trim();
                          });
                        },
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                          EmailValidator(errorText: "Not valid Email pattern"),
                        ]),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(23),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 30, right: 20, top: 20, bottom: 20),
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
                            errorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            labelStyle:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        onChanged: (value) {
                          setState(() {
                            _password = value.trim();
                          });
                        },
                        validator: MultiValidator([
                          RequiredValidator(errorText: "Required"),
                          MinLengthValidator(8, errorText: "Password must be a minimum length of 8 "),
                        ]),
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(23),
                    child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                                left: 30, right: 20, top: 20, bottom: 20),
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
                            errorBorder:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                )),
                            labelStyle:
                                TextStyle(fontSize: 23, color: Colors.white)),
                        onChanged: (value) {
                          setState(() {
                            _confirmPassword = value.trim();
                          });
                        },
                        //validator MultiValidator([
                          //RequiredValidator(errorText: "Required"),
                        validator: (_confirmPassword) =>
                            MatchValidator(errorText: "Password did not matched!")
                           .validateMatch(_password, _confirmPassword),


                    ),
                      //])
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: 25, bottom: 20, left: 60, right: 60),
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
                            ]),
                        child: TextButton(
                          onPressed: () {
                              auth.createUserWithEmailAndPassword(
                                      email: _email, password: _password)
                                      .then((_) {
                                user = auth.currentUser;
                                user.sendEmailVerification();
                                Future<void> checkEmailVerified() async {
                                  user = auth.currentUser;
                                  await user.reload();
                                  if (user.emailVerified) {
                                    timer.cancel();
                                    Navigator.of(context).pushReplacement(
                                        MaterialPageRoute(
                                            builder: (context) => LandingPage())
                                    );
                                  }
                                }
                                timer =
                                    Timer.periodic(Duration(seconds: 5), (timer) {
                                  checkEmailVerified();
                                });
                              });
                              _showDialog();

                          },
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all(EdgeInsets.only(
                                left: 10, bottom: 5, top: 5, right: 10)),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
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
      ),
    );
  }
}
