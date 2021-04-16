import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fest_o_mania/src/views/utils/LandingPage.dart';
import 'package:fest_o_mania/src/views/ui/ChoicePage.dart';
<<<<<<< Updated upstream
import 'package:fest_o_mania/src/views/utils/StartDateTime.dart';
import 'package:fest_o_mania/src/views/utils/EndDateTime.dart';
=======
import 'package:fest_o_mania/src/views/utils/DateTime.dart';
import 'package:fest_o_mania/src/views/utils/database.dart';
>>>>>>> Stashed changes

void main() async {
  await Firebase.initializeApp();
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
      home: RegisterClgEvent(),
    );
  }
}

class RegisterClgEvent extends StatefulWidget {
  @override
  _RegisterClgEventState createState() => _RegisterClgEventState();
}

//bool loading = false;
class _RegisterClgEventState extends State<RegisterClgEvent> {
  String errorText;
  _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return BackdropFilter(
              child: AlertDialog(
                content: Text(errorText),
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
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final FirebaseAuth auth = FirebaseAuth.instance;
  String _eMail = "";
  String _password = "";
  String _collegeName = "";
  String _eventName = "";
  String _eventDate = "";
  String _eventCategory = "";
  String _description = "";
  String _registrationLink = "";
  String _facebookLink = "";
  String _instagramLink = "";
  String _twitterLink = "";
  DateTime date1;
  DateTime date2;
  final dbRef = FirebaseDatabase.instance.reference().child("Live");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff5c6bc0),
        body: SafeArea(
            top: false,
            child: SingleChildScrollView(
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child : Form(
                       autovalidateMode: AutovalidateMode.always,
                       key: formKey,

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                'Register your\nCollege Event ',
                                style: TextStyle(
                                  fontFamily: 'Alegreya',
                                  fontSize: 28,
                                  color: const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                                onChanged: (value) {
                                setState(() {
                                  _eMail = value.trim();
                              });
                              },
                              validator: MultiValidator([
                                RequiredValidator(errorText: "Required"),
                                EmailValidator(
                                    errorText: "Not valid Email pattern"),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(color: Colors.white),
                              keyboardType: TextInputType.visiblePassword,
                              obscureText: true,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                      left: 30, right: 20, top: 10, bottom: 10),
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
                                  errorBorder: OutlineInputBorder(
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
                                  TextStyle(fontSize: 19, color: Colors.white)),
                              onChanged: (value) {
                                setState(() {
                                  _password = value.trim();
                                });
                              },
                              validator: MultiValidator([
                                RequiredValidator(errorText: "Required"),
                              ]),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'College name',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                                      onChanged: (value) {
                                      setState(() {
                                    _collegeName = value.trim();
                                   });
                                  },
                              validator: RequiredValidator(errorText: "Required"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Event name',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                                      onChanged: (value) {
                                       setState(() {
                                        _eventName = value.trim();
                                    });
                                  },
                                    validator: RequiredValidator(errorText: "Required"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: BasicStartDateTimeField(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: BasicEndDateTimeField(),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Category of event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                                      onChanged: (value) {
                                      setState(() {
                                      _eventCategory = value.trim();
                                    });
                                    },
                                 validator: RequiredValidator(errorText: "Required"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Description of event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                                  onChanged: (value) {
                                    setState(() {
                                    _description = value.trim();
                                 });
                                },
                              validator: RequiredValidator(errorText: "Required"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Registration link for event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _registrationLink = value.trim();
                                });
                              },
                              validator: RequiredValidator(errorText: "Required"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Facebook post link of event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _facebookLink = value.trim();
                                });
                              },

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Instagram post link of event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _instagramLink = value.trim();
                                });
                              },

                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 30 , right: 20, top: 10, bottom: 10),
                                  labelText: 'Twitter post link of event',
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
                                  errorBorder: OutlineInputBorder(
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
                                  labelStyle: TextStyle(
                                      fontSize: 19,
                                      color: Colors.white
                                  )
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _twitterLink = value.trim();
                                });
                              },

                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(bottom: 20, top: 20, right: 15, left: 15),
                            child: InkWell(
                              onTap: () {


                              },
                              child: Text(
                                'Upload Poster',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white
                                ),
                              ),
                            ),
                          ),

                          SizedBox(
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.only(top: 20, bottom: 20, left: 60, right: 60),
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
                                  onPressed: () async {
                                    try {
                                      setState(() {
                                        loading = true;
                                      });
                                      await auth.signInWithEmailAndPassword(email: _eMail, password: _password);
                                      EventDatabaseService().updateEventData(null, _eventName, _collegeName, _eventCategory, _description, date1, date2, _registrationLink, _facebookLink, _instagramLink, _twitterLink);
                                      Navigator.of(context).pushReplacement(
                                          MaterialPageRoute(
                                              builder: (context) => LandingPage()));
                                    } on FirebaseAuthException catch (e) {
                                      if (e.code == 'invalid-email') {
                                        setState(() {
                                          loading = false;
                                          errorText="The email specified does not exist.";
                                          _showDialog();
                                        });
                                      }
                                      else if (e.code == 'wrong-password') {
                                        loading = false;
                                        errorText = "The password is incorrect.";
                                        _showDialog();
                                      }
                                      else if (e.code == 'user-not-found') {
                                        loading = false;
                                        errorText = "The email or password is incorrect.";
                                        _showDialog();
                                      }
                                      else {
                                        setState(() {
                                          loading = false;
                                        });
                                      }
                                    }
                                  },
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(EdgeInsets.all(7)),
                                    backgroundColor:
                                    MaterialStateProperty.all<Color>(Colors.white),
                                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20))),
                                  ),
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontFamily: 'Alegreya',
                                      fontSize: 27,
                                      color: const Color(0xff1c69f0),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ]
                    )
                )
            )
        )
    )
    );
  }
}

