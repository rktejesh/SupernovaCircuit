import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:fest_o_mania/src/views/ui/CtfEvent.dart';
import 'package:fest_o_mania/src/views/ui/RegisterClgEvent.dart';
import 'package:fest_o_mania/src/views/ui/CodingEvent.dart';
import 'package:fest_o_mania/src/views/ui/Hackathon.dart';
import 'package:fest_o_mania/src/views/ui/TechnicalTalks.dart';
import 'package:fest_o_mania/src/views/ui/AboutUs.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }
  String _user = "Username";
  String _userEmail = "useremail@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage(
                "lib/src/assets/images/coding-bootcamp-motion-poster-design-template-eed37e06b3bbfc660c8a6dd06c462820.jpg",
              ),
            ),
            accountName: Text(_user),
            decoration: BoxDecoration(),
            accountEmail: Text(_userEmail),
          ),
          ListTile(
            title: Text('Coding Events'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CodingEventPage(),));
            },
          ),
          ListTile(
            title: Text('Hackathons'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => HackathonsPage(),));
            },
          ),
          ListTile(
            title: Text('Ctf Events'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => CtfEventPage(),));
            },
          ),
          ListTile(
            title: Text('Technical Talks'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => TechnicalTalk(),));
            },
          ),
          Divider(),
          ListTile(
            title: Text('Register Your College'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterClgEvent(),));
            },
          ),
          ListTile(
            title: Text('About Us'),
            onTap:() {
              Navigator.of(context).pop();
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs(),));
            },
          ),
          ListTile(
            title: Text('Signout'),
            onTap: _signOut,
          ),
          Divider(),
        ],
      ),
    );
  }
}
