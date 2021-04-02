import 'package:flutter/material.dart';
import './XDsearch1.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDsearch extends StatelessWidget {
  XDsearch({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedeff8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(19.0, 16.0),
            child:
                // Adobe XD layer: 'searchbar_search' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.0,
                  pageBuilder: () => XDsearch1(),
                ),
              ],
              child: Container(
                width: 375.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: const Color(0xffffffff),
                  border:
                      Border.all(width: 1.0, color: const Color(0xff707070)),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(37.0, 22.0),
            child:
                // Adobe XD layer: 'searchIcon_search' (group)
                SizedBox(
              width: 41.0,
              height: 41.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 41.1, 41.1),
                    size: Size(41.1, 41.1),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_i14zmx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.1, 5.1, 30.0, 30.0),
                    size: Size(41.1, 41.1),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_t4j5gd,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(184.0, -168.0),
            child:
                // Adobe XD layer: 'backarrow_hackathon' (group)
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
        ],
      ),
    );
  }
}

const String _svg_i14zmx =
    '<svg viewBox="0.0 0.0 41.1 41.1" ><path  d="M 0 0 L 41.12646484375 0 L 41.12646484375 41.12646484375 L 0 41.12646484375 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_t4j5gd =
    '<svg viewBox="5.1 5.1 30.0 30.0" ><path transform="translate(2.14, 2.14)" d="M 24.42003059387207 21.84962844848633 L 23.06628799438477 21.84962844848633 L 22.58647918701172 21.3869571685791 C 24.26580810546875 19.43344879150391 25.27683448791504 16.89731597900391 25.27683448791504 14.1384162902832 C 25.27683448791504 7.986583232879639 20.29025077819824 3 14.1384162902832 3 C 7.986583232879639 3 3 7.986583232879639 3 14.1384162902832 C 3 20.29025077819824 7.986583232879639 25.27683448791504 14.1384162902832 25.27683448791504 C 16.89731597900391 25.27683448791504 19.43344879150391 24.26580810546875 21.3869571685791 22.58647918701172 L 21.84962844848633 23.06628799438477 L 21.84962844848633 24.42003059387207 L 30.41764450073242 32.97091293334961 L 32.97091293334961 30.41764450073242 L 24.42003059387207 21.84962844848633 Z M 14.1384162902832 21.84962844848633 C 9.871545791625977 21.84962844848633 6.427205562591553 18.40528678894043 6.427205562591553 14.1384162902832 C 6.427205562591553 9.871545791625977 9.871545791625977 6.427205562591553 14.1384162902832 6.427205562591553 C 18.40528678894043 6.427205562591553 21.84962844848633 9.871545791625977 21.84962844848633 14.1384162902832 C 21.84962844848633 18.40528678894043 18.40528678894043 21.84962844848633 14.1384162902832 21.84962844848633 Z" fill="#3f4239" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i3tzy6 =
    '<svg viewBox="4.3 10.7 36.9 24.0" ><path transform="translate(2.29, 5.71)" d="M 14.8997917175293 28.99958038330078 L 17.49817848205566 26.58248138427734 L 9.058027267456055 18.71404647827148 L 38.85654449462891 18.71404647827148 L 38.85654449462891 15.28553581237793 L 9.058027267456055 15.28553581237793 L 17.5166072845459 7.417099475860596 L 14.8997917175293 4.999999523162842 L 1.999999761581421 16.99979209899902 L 14.8997917175293 28.99958038330078 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
