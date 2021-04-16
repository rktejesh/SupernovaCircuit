import 'dart:io';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:firebase_core/firebase_core.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fest_o_mania/src/views/utils/LandingPage.dart';
import 'package:fest_o_mania/src/views/ui/ChoicePage.dart';
import 'package:fest_o_mania/src/views/utils/DateTime.dart';
import 'package:fest_o_mania/src/views/utils/database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

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
  String imageUrl;
  uploadImage() async {
    final _firebaseStorage = FirebaseStorage.instance;
    final _imagePicker = ImagePicker();
    PickedFile image;
    await Permission.photos.request();
    var permissionStatus = await Permission.photos.status;
    if (permissionStatus.isGranted){
      image = await _imagePicker.getImage(source: ImageSource.gallery);
      var file = File(image.path);
      if (image != null){
        var snapshot = await _firebaseStorage.ref().putFile(file).whenComplete(() => null);
        var downloadUrl = await snapshot.ref.getDownloadURL();
        setState(() {
          imageUrl = downloadUrl;
        });
      } else {
        print('No Image Path Received');
      }
    } else {
      print('Permission not granted. Try Again with permission access');
    }
  }
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
  String _eventCategory = "";
  String _description = "";
  String _registrationLink = "";
  String _facebookLink = "";
  String _instagramLink = "";
  String _twitterLink = "";
  DateTime date1;
  DateTime date2;

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
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                              margin: EdgeInsets.all(15),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                border: Border.all(color: Colors.white),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(2, 2),
                                    spreadRadius: 2,
                                    blurRadius: 1,
                                  ),
                                ],
                              ),
                              child: (imageUrl != null)
                                  ? Image.network(imageUrl)
                                  : null
                          ),
                          ElevatedButton(
                            child: Text("Upload Image"),
                            onPressed: (){
                              uploadImage();
                            },
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

