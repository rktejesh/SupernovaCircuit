import 'package:flutter/material.dart';
import './XDloginButton_loginpg.dart';
import './XDusername_loginpg.dart';
import './XDpassword_loginpg.dart';
import './XDemail_signuppg.dart';
import './XDcategoryofevent_register.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDRegister_clg_event extends StatelessWidget {
  XDRegister_clg_event({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(78.0, 31.0),
            child: Text(
              'Register your \ncollege Event',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 45,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 785.0),
            child:
                // Adobe XD layer: 'registerButton_regi…' (component)
                SizedBox(
              width: 288.0,
              height: 85.0,
              child: XDloginButton_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 192.0),
            child:
                // Adobe XD layer: 'username_register' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDusername_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 392.0),
            child:
                // Adobe XD layer: 'eventname_register' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDpassword_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 492.0),
            child:
                // Adobe XD layer: 'description_register' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDpassword_loginpg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 292.0),
            child:
                // Adobe XD layer: 'collegename_register' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDemail_signuppg(),
            ),
          ),
          Transform.translate(
            offset: Offset(42.0, 592.0),
            child:
                // Adobe XD layer: 'categoryofevent_reg…' (component)
                SizedBox(
              width: 329.0,
              height: 63.0,
              child: XDcategoryofevent_register(),
            ),
          ),
          Transform.translate(
            offset: Offset(79.0, 687.0),
            child:
                // Adobe XD layer: 'uploadPoster_resgis…' (group)
                SizedBox(
              width: 165.0,
              height: 41.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 127.0, 41.0),
                    size: Size(165.0, 41.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff1c69f0),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(32.0, 5.0, 133.0, 31.0),
                    size: Size(165.0, 41.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'Upload Poster',
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        fontSize: 23,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(244.0, 687.0),
            child:
                // Adobe XD layer: 'uploadIcon_register' (group)
                SizedBox(
              width: 45.0,
              height: 45.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 45.0),
                    size: Size(45.0, 45.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 45.0, 45.0),
                          size: Size(45.0, 45.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(9.3, 5.6, 26.2, 31.8),
                    size: Size(45.0, 45.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 26.2, 31.8),
                          size: Size(26.2, 31.8),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_ln1j7u,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ln1j7u =
    '<svg viewBox="0.0 0.0 26.2 31.8" ><path transform="translate(-5.0, -3.0)" d="M 5 34.77669906616211 L 31.16904449462891 34.77669906616211 L 31.16904449462891 31.03826141357422 L 5 31.03826141357422 L 5 34.77669906616211 Z M 5 16.08452224731445 L 12.47686958312988 16.08452224731445 L 12.47686958312988 27.29982566833496 L 23.69217491149902 27.29982566833496 L 23.69217491149902 16.08452224731445 L 31.16904449462891 16.08452224731445 L 18.08452224731445 3 L 5 16.08452224731445 Z" fill="#f4f5fa" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
