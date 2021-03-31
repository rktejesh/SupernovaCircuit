import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './XDMain_page_live.dart';
import 'package:adobe_xd/page_link.dart';
import './XDregister_sidebarMenu.dart';
import './XDhackathon_sidebarMenu.dart';
import './XDctf_sidebarMenu.dart';
import './XDtechtalk_sidebarMenu.dart';
import './XDaboutus_sidebarMenu.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDSidebar extends StatelessWidget {
  XDSidebar({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffedeff8),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(19.0, 14.0),
            child:
                // Adobe XD layer: '3line_sidebar' (group)
                SizedBox(
              width: 61.0,
              height: 52.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 52.0),
                    size: Size(61.0, 52.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 61.0, 52.0),
                          size: Size(61.0, 52.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(7.7, 13.0, 45.7, 26.0),
                    size: Size(61.0, 52.0),
                    pinLeft: true,
                    pinRight: true,
                    fixedHeight: true,
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 45.7, 26.0),
                          size: Size(45.7, 26.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_xxk0xw,
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
            offset: Offset(342.0, 14.0),
            child:
                // Adobe XD layer: 'searchIcon_sidebar' (group)
                SizedBox(
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
          Transform.translate(
            offset: Offset(26.0, 77.0),
            child: Text(
              'For you',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 35,
                color: const Color(0xff3f4239),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 156.0),
            child:
                // Adobe XD layer: 'slideshowbox_sidebar' (shape)
                Container(
              width: 375.0,
              height: 208.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(68.0, 412.0),
            child:
                // Adobe XD layer: 'bookmarkIcon_sidebar' (group)
                SizedBox(
              width: 46.0,
              height: 46.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 46.0, 46.0),
                    size: Size(46.0, 46.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_dga9ob,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(12.4, 6.5, 21.3, 33.0),
                    size: Size(46.0, 46.0),
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: SvgPicture.string(
                      _svg_5fs4tp,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(162.0, 395.0),
            child:
                // Adobe XD layer: 'liveIcon_sidebar' (group)
                SizedBox(
              width: 89.0,
              height: 81.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 89.0, 81.0),
                    size: Size(89.0, 81.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17.0),
                        color: const Color(0xffd1dcf4),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(18.0, 14.0, 53.0, 53.0),
                    size: Size(89.0, 81.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(22.4, 24.9, 44.0, 31.1),
                    size: Size(89.0, 81.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_rml7sx,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 507.0),
            child:
                // Adobe XD layer: 'box1_sidebar' (group)
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
            offset: Offset(22.0, 728.0),
            child:
                // Adobe XD layer: 'box2_sidebar' (group)
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
            offset: Offset(299.0, 414.0),
            child:
                // Adobe XD layer: 'upcomingIcon_sidebar' (shape)
                Container(
              width: 47.0,
              height: 47.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.7), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          // Adobe XD layer: 'sidebarBox_sidebar' (shape)
          Container(
            width: 342.0,
            height: 870.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xffb2b1ca),
                  offset: Offset(4, 0),
                  blurRadius: 6,
                ),
              ],
            ),
          ),
          // Adobe XD layer: 'sidebarTopbox_sideb…' (shape)
          Container(
            width: 342.0,
            height: 125.0,
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          Transform.translate(
            offset: Offset(106.0, 42.0),
            child: Text(
              'Username',
              style: TextStyle(
                fontFamily: 'Alegreya',
                fontSize: 35,
                color: const Color(0xff3f4239),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 32.8),
            child:
                // Adobe XD layer: 'accountIcon_sidebar' (group)
                SizedBox(
              width: 66.0,
              height: 66.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 66.5, 66.5),
                    size: Size(66.5, 66.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_qj3zfr,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 5.5, 55.4, 55.4),
                    size: Size(66.5, 66.5),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: SvgPicture.string(
                      _svg_eg9cq7,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(342.0, 0.0),
            child:
                // Adobe XD layer: 'sidebarSidebox_side…' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.SlideLeft,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XDMain_page_live(),
                ),
              ],
              child: Container(
                width: 70.0,
                height: 870.0,
                decoration: BoxDecoration(),
              ),
            ),
          ),
          Container(),
          Transform.translate(
            offset: Offset(0.0, 148.0),
            child:
                // Adobe XD layer: 'register_sidebarMenu' (component)
                SizedBox(
              width: 342.0,
              height: 90.0,
              child: XDregister_sidebarMenu(),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 372.0),
            child:
                // Adobe XD layer: 'hackathon_sidebarMe…' (component)
                SizedBox(
              width: 219.0,
              height: 90.0,
              child: XDhackathon_sidebarMenu(),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 480.0),
            child:
                // Adobe XD layer: 'ctf_sidebarMenu' (component)
                SizedBox(
              width: 207.0,
              height: 90.0,
              child: XDctf_sidebarMenu(),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 592.0),
            child:
                // Adobe XD layer: 'techtalk_sidebarMenu' (component)
                SizedBox(
              width: 267.0,
              height: 90.0,
              child: XDtechtalk_sidebarMenu(),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 704.0),
            child:
                // Adobe XD layer: 'aboutus_sidebarMenu' (component)
                SizedBox(
              width: 171.0,
              height: 90.0,
              child: XDaboutus_sidebarMenu(),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_xxk0xw =
    '<svg viewBox="0.0 0.0 45.7 26.0" ><path transform="translate(-3.0, -6.0)" d="M 30.93524551391602 31.96747589111328 L 5.539566993713379 31.96747589111328 C 4.142807960510254 31.96747589111328 3 30.99369239807129 3 29.80351829528809 L 3 29.80351829528809 C 3 28.61334609985352 4.142807960510254 27.63956260681152 5.539566993713379 27.63956260681152 L 30.93524551391602 27.63956260681152 C 32.33200836181641 27.63956260681152 33.47481918334961 28.61334609985352 33.47481918334961 29.80351829528809 L 33.47481918334961 29.80351829528809 C 33.47481918334961 30.99369239807129 32.33200836181641 31.96747589111328 30.93524551391602 31.96747589111328 Z M 48.71222305297852 8.163955688476563 L 48.71222305297852 8.163955688476563 C 48.71222305297852 9.354131698608398 47.56941604614258 10.32791233062744 46.17265701293945 10.32791233062744 L 5.539566993713379 10.32791233062744 C 4.142807960510254 10.32791233062744 3 9.354131698608398 3 8.163955688476563 L 3 8.163955688476563 C 3 6.973781108856201 4.142807960510254 6 5.539566993713379 6 L 46.17265701293945 6 C 47.56941604614258 6 48.71222305297852 6.973781108856201 48.71222305297852 8.163955688476563 Z M 30.93524551391602 21.1476936340332 L 5.539566993713379 21.1476936340332 C 4.142807960510254 21.1476936340332 3 20.17391395568848 3 18.98373603820801 L 3 18.98373603820801 C 3 17.7935619354248 4.142807960510254 16.81978225708008 5.539566993713379 16.81978225708008 L 30.93524551391602 16.81978225708008 C 32.33200836181641 16.81978225708008 33.47481918334961 17.7935619354248 33.47481918334961 18.98373603820801 L 33.47481918334961 18.98373603820801 C 33.47481918334961 20.17391395568848 32.33200836181641 21.1476936340332 30.93524551391602 21.1476936340332 Z" fill="#3f4239" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_9kvwt3 =
    '<svg viewBox="0.0 0.0 52.0 52.0" ><path  d="M 0 0 L 52 0 L 52 52 L 0 52 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_7p1vlt =
    '<svg viewBox="6.5 6.5 37.9 37.9" ><path transform="translate(3.5, 3.5)" d="M 30.08333015441895 26.83333206176758 L 28.37166595458984 26.83333206176758 L 27.76499938964844 26.24833297729492 C 29.88833236694336 23.7783317565918 31.16666603088379 20.57166481018066 31.16666603088379 17.08333206176758 C 31.16666603088379 9.304999351501465 24.86166572570801 3 17.08333206176758 3 C 9.304999351501465 3 3 9.304999351501465 3 17.08333206176758 C 3 24.86166572570801 9.304999351501465 31.16666603088379 17.08333206176758 31.16666603088379 C 20.57166481018066 31.16666603088379 23.7783317565918 29.88833236694336 26.24833297729492 27.76499938964844 L 26.83333206176758 28.37166595458984 L 26.83333206176758 30.08333015441895 L 37.66666793823242 40.89500045776367 L 40.89500045776367 37.66666793823242 L 30.08333015441895 26.83333206176758 Z M 17.08333206176758 26.83333206176758 C 11.68833255767822 26.83333206176758 7.333333492279053 22.47833061218262 7.333333492279053 17.08333206176758 C 7.333333492279053 11.68833255767822 11.68833255767822 7.333333492279053 17.08333206176758 7.333333492279053 C 22.47833061218262 7.333333492279053 26.83333206176758 11.68833255767822 26.83333206176758 17.08333206176758 C 26.83333206176758 22.47833061218262 22.47833061218262 26.83333206176758 17.08333206176758 26.83333206176758 Z" fill="#3f4239" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dga9ob =
    '<svg viewBox="0.0 0.0 46.0 46.0" ><path  d="M 0 0 L 46.00000381469727 0 L 46.00000381469727 46 L 0 46 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5fs4tp =
    '<svg viewBox="12.4 6.5 21.3 33.0" ><path transform="translate(7.37, 3.52)" d="M 23.21887588500977 3 L 8.036479949951172 3 C 6.366415977478027 3 5 4.647661209106445 5 6.661468029022217 L 5 35.95321273803711 L 15.6276798248291 30.46101570129395 L 26.2553596496582 35.95321273803711 L 26.2553596496582 6.661468029022217 C 26.2553596496582 4.647661209106445 24.88894462585449 3 23.21887588500977 3 Z M 23.21887588500977 30.46101570129395 L 15.6276798248291 26.47001075744629 L 8.036479949951172 30.46101570129395 L 8.036479949951172 6.661468029022217 L 23.21887588500977 6.661468029022217 L 23.21887588500977 30.46101570129395 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_rml7sx =
    '<svg viewBox="4.4 10.9 44.0 31.1" ><path transform="translate(2.4, 5.92)" d="M 14.67815113067627 29.82407569885254 C 12.27898693084717 27.44692420959473 10.80427074432373 24.14532089233398 10.80427074432373 20.49154853820801 C 10.80427074432373 16.83777809143066 12.27898693084717 13.53617668151855 14.67815113067627 11.15902328491211 L 17.80366706848145 14.2845401763916 C 16.19688606262207 15.86930656433105 15.20640659332275 18.07037353515625 15.20640659332275 20.49154853820801 C 15.20640659332275 22.9127254486084 16.19688606262207 25.11379241943359 17.78165435791016 26.72057151794434 L 14.67815113067627 29.82407569885254 Z M 33.34320449829102 29.82407569885254 C 35.74237060546875 27.44692420959473 37.21708297729492 24.14532089233398 37.21708297729492 20.49154853820801 C 37.21708297729492 16.83777809143066 35.74237060546875 13.53617668151855 33.34320449829102 11.15902328491211 L 30.21768760681152 14.2845401763916 C 31.8244686126709 15.86930656433105 32.81494903564453 18.07037353515625 32.81494903564453 20.49154853820801 C 32.81494903564453 22.9127254486084 31.8244686126709 25.11379241943359 30.23969841003418 26.72057151794434 L 33.34320449829102 29.82407569885254 Z M 24.01067543029785 16.08941459655762 C 21.58950042724609 16.08941459655762 19.60854148864746 18.07037353515625 19.60854148864746 20.49154853820801 C 19.60854148864746 22.9127254486084 21.58950042724609 24.89368438720703 24.01067543029785 24.89368438720703 C 26.43185234069824 24.89368438720703 28.41281127929688 22.9127254486084 28.41281127929688 20.49154853820801 C 28.41281127929688 18.07037353515625 26.43185234069824 16.08941459655762 24.01067543029785 16.08941459655762 Z M 41.61922073364258 20.49154853820801 C 41.61922073364258 25.35590934753418 39.63825988769531 29.75804328918457 36.44670867919922 32.92757797241211 L 39.57222747802734 36.05309677124023 C 43.55615615844727 32.06916427612305 46.02135467529297 26.56649589538574 46.02135467529297 20.49154853820801 C 46.02135467529297 14.41660308837891 43.55615615844727 8.913932800292969 39.57222747802734 4.929999828338623 L 36.44670867919922 8.055517196655273 C 39.63825988769531 11.22505378723145 41.61922073364258 15.62718963623047 41.61922073364258 20.49154853820801 Z M 11.57464504241943 8.055517196655273 L 8.449128150939941 4.929999828338623 C 4.465195655822754 8.913932800292969 2.000000238418579 14.41660308837891 2.000000238418579 20.49154853820801 C 2.000000238418579 26.56649589538574 4.465195655822754 32.06916427612305 8.449129104614258 36.05309677124023 L 11.57464599609375 32.92757797241211 C 8.383096694946289 29.75804328918457 6.402135848999023 25.35590934753418 6.402135848999023 20.49154853820801 C 6.402135848999023 15.62718963623047 8.383096694946289 11.22505378723145 11.57464504241943 8.055517196655273 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qj3zfr =
    '<svg viewBox="0.0 0.0 66.5 66.5" ><path  d="M 0 0 L 66.48736572265625 0 L 66.48736572265625 66.48736572265625 L 0 66.48736572265625 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_eg9cq7 =
    '<svg viewBox="5.5 5.5 55.4 55.4" ><path transform="translate(3.54, 3.54)" d="M 29.70306968688965 2 C 14.41097545623779 2 2 14.41097545623779 2 29.70306968688965 C 2 44.99516296386719 14.41097545623779 57.4061393737793 29.70306968688965 57.4061393737793 C 44.99516296386719 57.4061393737793 57.4061393737793 44.99516296386719 57.4061393737793 29.70306968688965 C 57.4061393737793 14.41097354888916 44.99516296386719 2 29.70306968688965 2 Z M 29.70306968688965 10.31092071533203 C 34.30177688598633 10.31092071533203 38.01399230957031 14.02313327789307 38.01399230957031 18.62184143066406 C 38.01399230957031 23.22055053710938 34.30177688598633 26.93276214599609 29.70306968688965 26.93276214599609 C 25.10436248779297 26.93276214599609 21.39214897155762 23.22055053710938 21.39214897155762 18.62184143066406 C 21.39214897155762 14.02313327789307 25.10436248779297 10.31092071533203 29.70306968688965 10.31092071533203 Z M 29.70306968688965 49.64928436279297 C 22.77730178833008 49.64928436279297 16.6549243927002 46.10328674316406 13.08122825622559 40.7288932800293 C 13.16433811187744 35.21598434448242 24.16245651245117 32.19634628295898 29.70306968688965 32.19634628295898 C 35.21598052978516 32.19634628295898 46.24180221557617 35.21598434448242 46.32491302490234 40.7288932800293 C 42.75121307373047 46.10328674316406 36.62883758544922 49.64928436279297 29.70306968688965 49.64928436279297 Z" fill="#3f4239" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
