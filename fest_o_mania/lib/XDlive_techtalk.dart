import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDlive_techtalk extends StatelessWidget {
  XDlive_techtalk({
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
          bounds: Rect.fromLTWH(88.0, 19.0, 86.0, 48.0),
          size: Size(288.0, 85.0),
          fixedWidth: true,
          fixedHeight: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(26.0, 0.0, 60.0, 48.0),
                size: Size(86.0, 48.0),
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                fixedWidth: true,
                child: Text(
                  'Live',
                  style: TextStyle(
                    fontFamily: 'Alegreya',
                    fontSize: 35,
                    color: const Color(0xff3f4239),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 15.0, 18.0, 18.0),
                size: Size(86.0, 48.0),
                pinLeft: true,
                fixedWidth: true,
                fixedHeight: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                    color: const Color(0xffff0000),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
