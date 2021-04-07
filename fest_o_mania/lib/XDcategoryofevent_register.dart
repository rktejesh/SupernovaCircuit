import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class CategoryofeventRegister extends StatelessWidget {
  CategoryofeventRegister({
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
          bounds: Rect.fromLTWH(37.0, 11.0, 210.0, 41.0),
          size: Size(329.0, 63.0),
          pinLeft: true,
          fixedWidth: true,
          fixedHeight: true,
          child: Stack(
            children: <Widget>[
              Pinned.fromSize(
                bounds: Rect.fromLTWH(0.0, 0.0, 210.0, 41.0),
                size: Size(210.0, 41.0),
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
                bounds: Rect.fromLTWH(19.0, 5.0, 169.0, 31.0),
                size: Size(210.0, 41.0),
                pinLeft: true,
                pinRight: true,
                pinTop: true,
                pinBottom: true,
                child: Text(
                  'Category of Event',
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
      ],
    );
  }
}
