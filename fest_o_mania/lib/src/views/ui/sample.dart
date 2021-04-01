import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import '../../../XDloginButton_choicepg.dart';
import '../../../XDsignupButton_choicepg.dart';
import '../../../XDskip_choicepg.dart';
import '../../../XDgithubLogo.dart';
import '../../../XDfbLogo.dart';
import '../../../XDgmailLogo.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDChoice_page extends StatelessWidget {
  XDChoice_page({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c69f0),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(147.2, 554.1),
            child: SvgPicture.string(
              _svg_fk17je,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(92.0, 114.0),
            child:
            // Adobe XD layer: 'Logo' (group)
            SizedBox(
              width: 228.0,
              height: 47.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(60.0, 7.0, 168.0, 32.0),
                    size: Size(228.0, 47.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Fest-O-Mania',
                      style: TextStyle(
                        fontFamily: 'Forte',
                        fontSize: 29,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 47.0, 47.0),
                    size: Size(228.0, 47.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                    // Adobe XD layer: 'edit_calendar-24px' (group)
                    Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 47.0, 47.0),
                          size: Size(47.0, 47.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(5.8, 3.9, 39.2, 40.9),
                          size: Size(47.0, 47.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_3hcuir,
                            allowDrawingOutsideViewBox: true,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-22.0, 240.0),
            child:
            // Adobe XD layer: 'background_choicepg' (shape)
            Container(
              width: 451.0,
              height: 700.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(112.0),
                color: const Color(0xfff4f5fa),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 323.0),
            child:
            // Adobe XD layer: 'loginButton_choicepg' (component)
            SizedBox(
              width: 288.0,
              height: 85.0,
              child: XDloginButton_choicepg(),
            ),
          ),
          Transform.translate(
            offset: Offset(62.0, 469.0),
            child:
            // Adobe XD layer: 'signupButton_choice…' (component)
            SizedBox(
              width: 288.0,
              height: 85.0,
              child: XDsignupButton_choicepg(),
            ),
          ),
          Transform.translate(
            offset: Offset(104.0, 783.0),
            child:
            // Adobe XD layer: 'skip_choicepg' (component)
            SizedBox(
              width: 204.0,
              height: 51.0,
              child: XDskip_choicepg(),
            ),
          ),
          Transform.translate(
            offset: Offset(190.0, 590.0),
            child: Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 25,
                color: const Color(0xff3928e3),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(269.0, 657.0),
            child:
            // Adobe XD layer: 'githubLogo' (component)
            SizedBox(
              width: 102.0,
              height: 80.0,
              child: XDgithubLogo(),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 657.0),
            child:
            // Adobe XD layer: 'fbLogo' (component)
            SizedBox(
              width: 102.0,
              height: 80.0,
              child: XDfbLogo(),
            ),
          ),
          Transform.translate(
            offset: Offset(155.0, 657.0),
            child:
            // Adobe XD layer: 'gmailLogo' (component)
            SizedBox(
              width: 102.0,
              height: 80.0,
              child: XDgmailLogo(),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_3hcuir =
    '<svg viewBox="5.8 3.9 39.2 40.9" ><path transform="translate(2.85, 1.9)" d="M 20.54093551635742 40.97985458374023 L 6.897985935211182 40.97985458374023 C 4.734603404998779 40.97985458374023 3 39.22576522827148 3 37.08187103271484 L 3.019490003585815 9.795970916748047 C 3.019490003585815 7.652080059051514 4.734603404998779 5.89798641204834 6.897985935211182 5.89798641204834 L 8.846978187561035 5.89798641204834 L 8.846978187561035 3.94899320602417 C 8.846978187561035 2.877047061920166 9.724025726318359 2 10.79597187042236 2 C 11.86791706085205 2 12.74496459960938 2.877047061920166 12.74496459960938 3.94899320602417 L 12.74496459960938 5.89798641204834 L 28.33690643310547 5.89798641204834 L 28.33690643310547 3.94899320602417 C 28.33690643310547 2.877047061920166 29.21395492553711 2 30.2859001159668 2 C 31.35784339904785 2 32.23489379882813 2.877047061920166 32.23489379882813 3.94899320602417 L 32.23489379882813 5.89798641204834 L 34.18388748168945 5.89798641204834 C 36.32777786254883 5.89798641204834 38.08187103271484 7.652080059051514 38.08187103271484 9.795970916748047 L 38.08187103271484 21.48992729187012 L 34.18388748168945 21.48992729187012 L 34.18388748168945 17.59194374084473 L 6.897985935211182 17.59194374084473 L 6.897985935211182 37.08187103271484 L 20.54093551635742 37.08187103271484 L 20.54093551635742 40.97985458374023 Z M 40.28422927856445 31.21540451049805 L 41.66801452636719 29.83162117004395 C 42.42811965942383 29.07151222229004 42.42811965942383 27.84364700317383 41.66801452636719 27.08354187011719 L 40.28422927856445 25.69975662231445 C 39.52412414550781 24.93964767456055 38.29625701904297 24.93964767456055 37.53615188598633 25.69975662231445 L 36.15237045288086 27.08354187011719 L 40.28422927856445 31.21540451049805 Z M 38.90044784545898 32.59918975830078 L 29.1359920501709 42.36364364624023 C 28.7851734161377 42.71446228027344 28.2784366607666 42.92885208129883 27.77169799804688 42.92885208129883 L 25.41341781616211 42.92885208129883 C 24.86770248413086 42.92885208129883 24.43892288208008 42.50007629394531 24.43892288208008 41.9543571472168 L 24.43892288208008 39.59607315063477 C 24.43892288208008 39.06984710693359 24.6533088684082 38.58259582519531 25.00412940979004 38.2122917175293 L 34.76858139038086 28.44783782958984 L 38.90044784545898 32.59918975830078 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fk17je =
    '<svg viewBox="147.2 554.1 1.0 1.0" ><path  d="M 147.2017364501953 554.0824584960938" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';