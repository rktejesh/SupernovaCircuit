import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: Image.asset("lib/src/assets/images/coding-bootcamp-motion-poster-design-template-eed37e06b3bbfc660c8a6dd06c462820.jpg",),
            accountName: Text("Tejesh Reddy"),
            accountEmail: Text("rk.tejesh@gmail.com"),
          ),
          Text('Hello'),
          Text('Hiii')
        ],
      ),
    );
  }
}
