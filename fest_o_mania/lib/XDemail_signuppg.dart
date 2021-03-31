import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDemail_signuppg extends StatelessWidget {
  XDemail_signuppg({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 329.0, 63.0),
          size: Size(329.0, 63.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: const Color(0xff1c69f0),
              border: Border.all(width: 2.0, color: const Color(0xffffffff)),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(37.0, 11.0, 84.0, 41.0),
          size: Size(329.0, 63.0),
          pinLeft: true,
          pinTop: true,
          pinBottom: true,
          fixedWidth: true,
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xff1c69f0),
            ),
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(52.0, 16.0, 56.0, 31.0),
          size: Size(329.0, 63.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Email',
            style: TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 23,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
