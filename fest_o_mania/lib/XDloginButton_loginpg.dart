import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDloginButton_loginpg extends StatelessWidget {
  XDloginButton_loginpg({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 288.0, 85.0),
          size: Size(288.0, 85.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 288.0, 85.0),
                size: Size(288.0, 85.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(23.0, 0.0, 265.0, 65.0),
                      size: Size(288.0, 85.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0x0dedeff8),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 20.0, 265.0, 65.0),
                      size: Size(288.0, 85.0),
                      pinLeft: true,
                      pinRight: true,
                      pinBottom: true,
                      fixedHeight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0x0dedeff8),
                        ),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(10.0, 10.0, 265.0, 65.0),
                      size: Size(288.0, 85.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: const Color(0xffedeff8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(102.0, 19.0, 84.0, 48.0),
                size: Size(288.0, 85.0),
                fixedWidth: true,
                fixedHeight: true,
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Alegreya',
                    fontSize: 35,
                    color: const Color(0xff1c69f0),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
