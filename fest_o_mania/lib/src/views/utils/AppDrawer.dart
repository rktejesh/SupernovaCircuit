import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  String _user = "Username";
  String _userEmail = "useremail@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            currentAccountPicture: Image.asset(
              "lib/src/assets/images/coding-bootcamp-motion-poster-design-template-eed37e06b3bbfc660c8a6dd06c462820.jpg",
            ),
            accountName: Text(_user),
            accountEmail: Text(_userEmail),
          ),
          Text(''),
          Text('')
        ],
      ),
    );
  }
}
