import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDComponent221 extends StatelessWidget {
  XDComponent221({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
