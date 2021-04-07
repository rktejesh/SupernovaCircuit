import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDSidebar.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDabout_us extends StatelessWidget {
  XDabout_us({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedeff8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(143.0, 21.0),
            child: Text(
              'About us',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 35,
                color: const Color(0xff3f4239),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(27.0, 21.0),
            child:
                // Adobe XD layer: 'backarrow_aboutus' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.0,
                  pageBuilder: () => XDSidebar(),
                ),
              ],
              child: SizedBox(
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
                      child: Container(
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.3, 10.7, 36.9, 24.0),
                      size: Size(45.0, 45.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_i3tzy6,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 103.0),
            child:
                // Adobe XD layer: 'box_aboutus' (group)
                SizedBox(
              width: 368.0,
              height: 473.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 458.0),
                    size: Size(368.0, 473.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 458.0),
                    size: Size(368.0, 473.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 443.0),
                    size: Size(368.0, 473.0),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_i3tzy6 =
    '<svg viewBox="4.3 10.7 36.9 24.0" ><path transform="translate(2.29, 5.71)" d="M 14.8997917175293 28.99958038330078 L 17.49817848205566 26.58248138427734 L 9.058027267456055 18.71404647827148 L 38.85654449462891 18.71404647827148 L 38.85654449462891 15.28553581237793 L 9.058027267456055 15.28553581237793 L 17.5166072845459 7.417099475860596 L 14.8997917175293 4.999999523162842 L 1.999999761581421 16.99979209899902 L 14.8997917175293 28.99958038330078 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
