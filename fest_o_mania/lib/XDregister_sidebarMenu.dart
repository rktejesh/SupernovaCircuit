import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDregister_sidebarMenu extends StatelessWidget {
  XDregister_sidebarMenu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromSize(
          bounds: Rect.fromLTWH(0.0, 0.0, 342.0, 90.0),
          size: Size(342.0, 90.0),
          pinLeft: true,
          pinRight: true,
          pinTop: true,
          pinBottom: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(9.0, 0.0, 333.0, 84.0),
                size: Size(342.0, 90.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0x0f6f7896),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 7.0, 333.0, 83.0),
                size: Size(342.0, 90.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color(0x0f6f7896),
                  ),
                ),
              ),
              Pinned.fromSize(
                bounds: Rect.fromLTWH(9.0, 7.0, 324.0, 77.0),
                size: Size(342.0, 90.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ],
          ),
        ),
        Pinned.fromSize(
          bounds: Rect.fromLTWH(23.0, 21.0, 300.0, 48.0),
          size: Size(342.0, 90.0),
          pinLeft: true,
          pinRight: true,
          fixedHeight: true,
          child: Text(
            'Register your college',
            style: TextStyle(
              fontFamily: 'Alegreya',
              fontSize: 35,
              color: const Color(0xff3f4239),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
