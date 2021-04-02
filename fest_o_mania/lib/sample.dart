import 'package:flutter/material.dart';
import './XDloginButton_loginpg.dart';
import './XDMain_page_live.dart';
import 'package:adobe_xd/page_link.dart';
import './XDusername_loginpg.dart';
import './XDpassword_loginpg.dart';

class XDLogin_page extends StatelessWidget {
  XDLogin_page({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(42.0, 271.0),
            child: Text(
              'Welcome\nback ',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 40,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(228.0, 643.0),
            child: Text(
              'Forgot Password ?',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 18,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 705.0),
            child:
            // Adobe XD layer: 'loginButton_loginpg' (component)
            PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.1,
                  pageBuilder: () => XDMain_page_live(),
                ),
              ],
              child: SizedBox(
                width: 288.0,
                height: 85.0,
                child: XDloginButton_loginpg(),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 417.0),
            child:
            // Adobe XD layer: 'username_loginpg' (component)
            SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDusername_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 543.0),
            child:
            // Adobe XD layer: 'password_loginpg' (component)
            SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDpassword_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(119.0, -184.0),
            child:
            // Adobe XD layer: 'boyImage_loginpg' (shape)
            Container(
              width: 473.0,
              height: 473.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}