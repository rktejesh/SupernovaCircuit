import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDsearch.dart';
import 'package:adobe_xd/page_link.dart';
import './XDTechnical_talks.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDtt_live extends StatelessWidget {
  XDtt_live({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedeff8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(340.0, 21.0),
            child:
                // Adobe XD layer: 'searchIcon_livett' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.0,
                  pageBuilder: () => XDsearch(),
                ),
              ],
              child: SizedBox(
                width: 52.0,
                height: 52.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 52.0, 52.0),
                      size: Size(52.0, 52.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_9kvwt3,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(6.5, 6.5, 37.9, 37.9),
                      size: Size(52.0, 52.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_7p1vlt,
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
            offset: Offset(22.0, 549.0),
            child:
                // Adobe XD layer: 'box3_livett' (group)
                SizedBox(
              width: 368.0,
              height: 210.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 180.0),
                    size: Size(368.0, 210.0),
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
          Transform.translate(
            offset: Offset(22.0, 780.0),
            child:
                // Adobe XD layer: 'box4_livett' (group)
                SizedBox(
              width: 368.0,
              height: 210.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 180.0),
                    size: Size(368.0, 210.0),
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
          Transform.translate(
            offset: Offset(22.0, 87.0),
            child:
                // Adobe XD layer: 'box1_livett' (group)
                SizedBox(
              width: 368.0,
              height: 210.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 180.0),
                    size: Size(368.0, 210.0),
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
          Transform.translate(
            offset: Offset(22.0, 318.0),
            child:
                // Adobe XD layer: 'box2_livett' (group)
                SizedBox(
              width: 368.0,
              height: 210.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 195.0),
                    size: Size(368.0, 210.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 180.0),
                    size: Size(368.0, 210.0),
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
          Transform.translate(
            offset: Offset(27.0, 21.0),
            child:
                // Adobe XD layer: 'backarrow_livett' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDTechnical_talks(),
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
            offset: Offset(159.0, 14.0),
            child:
                // Adobe XD layer: 'liveHeading_livett' (group)
                SizedBox(
              width: 94.0,
              height: 52.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(29.0, 0.0, 65.0, 52.0),
                    size: Size(94.0, 52.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Text(
                      'Live',
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        fontSize: 38,
                        color: const Color(0xff3f4239),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 17.0, 20.0, 19.0),
                    size: Size(94.0, 52.0),
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
          ),
        ],
      ),
    );
  }
}

const String _svg_9kvwt3 =
    '<svg viewBox="0.0 0.0 52.0 52.0" ><path  d="M 0 0 L 52 0 L 52 52 L 0 52 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7p1vlt =
    '<svg viewBox="6.5 6.5 37.9 37.9" ><path transform="translate(3.5, 3.5)" d="M 30.08333015441895 26.83333206176758 L 28.37166595458984 26.83333206176758 L 27.76499938964844 26.24833297729492 C 29.88833236694336 23.7783317565918 31.16666603088379 20.57166481018066 31.16666603088379 17.08333206176758 C 31.16666603088379 9.304999351501465 24.86166572570801 3 17.08333206176758 3 C 9.304999351501465 3 3 9.304999351501465 3 17.08333206176758 C 3 24.86166572570801 9.304999351501465 31.16666603088379 17.08333206176758 31.16666603088379 C 20.57166481018066 31.16666603088379 23.7783317565918 29.88833236694336 26.24833297729492 27.76499938964844 L 26.83333206176758 28.37166595458984 L 26.83333206176758 30.08333015441895 L 37.66666793823242 40.89500045776367 L 40.89500045776367 37.66666793823242 L 30.08333015441895 26.83333206176758 Z M 17.08333206176758 26.83333206176758 C 11.68833255767822 26.83333206176758 7.333333492279053 22.47833061218262 7.333333492279053 17.08333206176758 C 7.333333492279053 11.68833255767822 11.68833255767822 7.333333492279053 17.08333206176758 7.333333492279053 C 22.47833061218262 7.333333492279053 26.83333206176758 11.68833255767822 26.83333206176758 17.08333206176758 C 26.83333206176758 22.47833061218262 22.47833061218262 26.83333206176758 17.08333206176758 26.83333206176758 Z" fill="#3f4239" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_i3tzy6 =
    '<svg viewBox="4.3 10.7 36.9 24.0" ><path transform="translate(2.29, 5.71)" d="M 14.8997917175293 28.99958038330078 L 17.49817848205566 26.58248138427734 L 9.058027267456055 18.71404647827148 L 38.85654449462891 18.71404647827148 L 38.85654449462891 15.28553581237793 L 9.058027267456055 15.28553581237793 L 17.5166072845459 7.417099475860596 L 14.8997917175293 4.999999523162842 L 1.999999761581421 16.99979209899902 L 14.8997917175293 28.99958038330078 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
