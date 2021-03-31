import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDsignupButton_choicepg extends StatelessWidget {
  XDsignupButton_choicepg({
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
                bounds: Rect.fromLTWH(23.0, 0.0, 265.0, 65.0),
                size: Size(288.0, 85.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                fixedHeight: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0x0d6f7896),
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
                    color: const Color(0x0d6f7896),
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
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(89.0, 19.0, 110.0, 48.0),
          size: Size(288.0, 85.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Sign up',
            style: TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 35,
              color: const Color(0xff1c69f0),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
