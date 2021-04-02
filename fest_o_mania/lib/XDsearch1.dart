import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDMain_page_live.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDsearch1 extends StatelessWidget {
  XDsearch1({
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
                Container(
              width: 375.0,
              height: 50.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(31.0, 22.0),
            child:
                // Adobe XD layer: 'backarrow_hackathon' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  ease: Curves.easeInOut,
                  duration: 0.0,
                  pageBuilder: () => XDMain_page_live(),
                ),
              ],
              child: SizedBox(
                width: 38.0,
                height: 38.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(0.0, 0.0, 38.0, 38.0),
                      size: Size(38.0, 38.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: Container(
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Pinned.fromSize(
                      bounds: Rect.fromLTWH(4.3, 9.2, 29.9, 20.0),
                      size: Size(38.0, 38.0),
                      pinLeft: true,
                      pinRight: true,
                      pinTop: true,
                      pinBottom: true,
                      child: SvgPicture.string(
                        _svg_qvfyvi,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_qvfyvi =
    '<svg viewBox="4.3 9.2 29.9 20.0" ><path transform="translate(2.29, 4.18)" d="M 12.44979190826416 24.99957847595215 L 14.55467796325684 22.98533630371094 L 7.717527389526367 16.42833137512207 L 31.85654067993164 16.42833137512207 L 31.85654067993164 13.57124900817871 L 7.717527389526367 13.57124900817871 L 14.56960678100586 7.014242172241211 L 12.44979190826416 4.999999523162842 L 1.999999761581421 14.99979209899902 L 12.44979190826416 24.99957847595215 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
