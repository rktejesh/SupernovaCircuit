import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDskip_choicepg extends StatelessWidget {
  XDskip_choicepg({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 204.0, 51.0),
          size: Size(204.0, 51.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(16.0, 0.0, 188.0, 39.0),
                size: Size(204.0, 51.0),
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
                bounds: Rect.fromLTWH(0.0, 12.0, 187.0, 39.0),
                size: Size(204.0, 51.0),
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
                bounds: Rect.fromLTWH(7.0, 6.0, 188.0, 39.0),
                size: Size(204.0, 51.0),
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
          bounds: Rect.fromLTWH(42.0, 10.0, 121.0, 31.0),
          size: Size(204.0, 51.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Text(
            'Skip for now',
            style: TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 23,
              color: const Color(0xff1c69f0),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
