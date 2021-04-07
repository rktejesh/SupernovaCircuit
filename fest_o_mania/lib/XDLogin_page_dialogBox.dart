import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDloginButton_loginpg.dart';
import './XDMain_page_live.dart';
import 'package:adobe_xd/page_link.dart';
import './XDusername_loginpg.dart';
import './XDpassword_loginpg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLogin_page_dialogBox extends StatelessWidget {
  XDLogin_page_dialogBox({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2b6ee3),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(42.0, -184.0),
            child:
                // Adobe XD layer: 'loginpage_as_bg_log…' (group)
                SizedBox(
              width: 550.0,
              height: 974.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 455.0, 153.0, 110.0),
                    size: Size(550.0, 974.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Welcome\nback ',
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        fontSize: 40,
                        color: const Color(0xa3ffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(186.0, 827.0, 134.0, 24.0),
                    size: Size(550.0, 974.0),
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontFamily: 'Alegreya',
                        fontSize: 18,
                        color: const Color(0xa3ffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(20.0, 889.0, 288.0, 85.0),
                    size: Size(550.0, 974.0),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'loginButton_loginpg' (component)
                        PageLink(
                      links: [
                        PageLinkInfo(
                          ease: Curves.easeInOut,
                          duration: 0.1,
                          pageBuilder: () => XDMain_page_live(),
                        ),
                      ],
                      child: XDloginButton_loginpg(),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 601.0, 329.0, 63.0),
                    size: Size(550.0, 974.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'username_loginpg' (component)
                        XDusername_loginpg(),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 727.0, 329.0, 63.0),
                    size: Size(550.0, 974.0),
                    pinLeft: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'password_loginpg' (component)
                        XDpassword_loginpg(),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(77.0, 0.0, 473.0, 473.0),
                    size: Size(550.0, 974.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'boyImage_loginpg' (shape)
                        Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage(''),
                          fit: BoxFit.fill,
                          colorFilter: new ColorFilter.mode(
                              Colors.black.withOpacity(0.64), BlendMode.dstIn),
                        ),
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
                // Adobe XD layer: 'dialogBox_loginpgda…' (group)
                SizedBox(
              width: 368.0,
              height: 290.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(10.0, 0.0, 358.0, 275.0),
                    size: Size(368.0, 290.0),
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
                    bounds: Rect.fromLTWH(0.0, 15.0, 358.0, 275.0),
                    size: Size(368.0, 290.0),
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
                    bounds: Rect.fromLTWH(10.0, 15.0, 348.0, 260.0),
                    size: Size(368.0, 290.0),
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
            offset: Offset(55.0, 416.0),
            child: Text(
              'Password/username \n          is incorrect. \n      Please try again',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 35,
                color: const Color(0xff3f4239),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(171.2, 346.4),
            child:
                // Adobe XD layer: 'errorIcon_loginpgda…' (group)
                SizedBox(
              width: 70.0,
              height: 70.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 69.6, 69.6),
                    size: Size(69.6, 69.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_5vph61,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.8, 5.8, 58.0, 58.0),
                    size: Size(69.6, 69.6),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_25sbjf,
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

const String _svg_5vph61 =
    '<svg viewBox="0.0 0.0 69.6 69.6" ><path  d="M 0 0 L 69.6090087890625 0 L 69.6090087890625 69.6090087890625 L 0 69.6090087890625 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_25sbjf =
    '<svg viewBox="5.8 5.8 58.0 58.0" ><path transform="translate(3.8, 3.8)" d="M 28.10337829589844 39.70487976074219 L 33.90412902832031 39.70487976074219 L 33.90412902832031 45.50563049316406 L 28.10337829589844 45.50563049316406 L 28.10337829589844 39.70487976074219 Z M 28.10337829589844 16.50187683105469 L 33.90412902832031 16.50187683105469 L 33.90412902832031 33.90412902832031 L 28.10337829589844 33.90412902832031 L 28.10337829589844 16.50187683105469 Z M 30.97475051879883 2 C 14.96467781066895 2 2 14.99368095397949 2 31.00375366210938 C 2 47.01382827758789 14.96467781066895 60.00750732421875 30.97475051879883 60.00750732421875 C 47.01382827758789 60.00750732421875 60.00750732421875 47.01382827758789 60.00750732421875 31.00375366210938 C 60.00750732421875 14.99368095397949 47.01382827758789 2 30.97475051879883 2 Z M 31.00375366210938 54.20675659179688 C 18.1840934753418 54.20675659179688 7.800750732421875 43.82341384887695 7.800750732421875 31.00375366210938 C 7.800750732421875 18.1840934753418 18.1840934753418 7.800750732421875 31.00375366210938 7.800750732421875 C 43.82341384887695 7.800750732421875 54.20675659179688 18.1840934753418 54.20675659179688 31.00375366210938 C 54.20675659179688 43.82341384887695 43.82341384887695 54.20675659179688 31.00375366210938 54.20675659179688 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
