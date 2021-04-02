import 'package:flutter/material.dart';
import './XDloginButton_loginpg.dart';
import './XDMain_page_live.dart';
import 'package:adobe_xd/page_link.dart';
import './XDusername_loginpg.dart';
import './XDpassword_loginpg.dart';
import './XDemail_signuppg.dart';

class XDSignup_page extends StatelessWidget {
  XDSignup_page({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(42.0, 174.0),
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
          Transform.translate(
            offset: Offset(62.0, 705.0),
            child:
                // Adobe XD layer: 'signupButton_signup…' (component)
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
            offset: Offset(42.0, 265.0),
            child:
                // Adobe XD layer: 'username_signuppg' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDusername_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 485.0),
            child:
                // Adobe XD layer: 'password_signuppg' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDpassword_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 595.0),
            child:
                // Adobe XD layer: 'confirmpass_signuppg' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDpassword_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(164.0, -145.0),
            child:
                // Adobe XD layer: 'boyImage_signuppg' (shape)
                Container(
              width: 394.0,
              height: 394.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 375.0),
            child:
                // Adobe XD layer: 'email_signuppg' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDemail_signuppg(),
            ),
          ),
        ],
      ),
    );
  }
}
