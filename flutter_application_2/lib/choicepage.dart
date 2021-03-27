import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Loginpage.dart';
import 'package:adobe_xd/page_link.dart';
import './signuppage.dart';
import 'package:flutter_svg/flutter_svg.dart';

class choicepage extends StatelessWidget {
  choicepage({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(91.0, 48.0),
            child: SizedBox(
              width: 230.0,
              height: 47.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(62.0, 9.0, 168.0, 30.0),
                    size: Size(230.0, 47.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'KnowYourFest',
                      style: TextStyle(
                        fontFamily: 'Forte',
                        fontSize: 27,
                        color: const Color(0xff000000),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 47.0),
                    size: Size(230.0, 47.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'edit_calendar-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 49.0, 47.0),
                          size: Size(49.0, 47.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(2.0, 1.4, 46.2, 45.3),
                          size: Size(49.0, 47.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_cmzwu8,
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
            offset: Offset(26.0, 162.0),
            child: Container(
              width: 360.0,
              height: 660.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(44.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xffff7597),
                    offset: Offset(3, 5),
                    blurRadius: 8,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 235.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => Loginpage(),
                ),
              ],
              child: Container(
                width: 301.0,
                height: 68.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  color: const Color(0xffff0266),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(58.0, 361.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => signuppage(),
                ),
              ],
              child: Container(
                width: 301.0,
                height: 68.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34.0),
                  color: const Color(0xffff0266),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(55.0, 487.0),
            child: Container(
              width: 301.0,
              height: 68.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xffff0266),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(173.0, 253.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(162.0, 379.0),
            child: Text(
              'Sign up',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(132.0, 510.0),
            child: Text(
              'Skip for now',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(189.0, 618.0),
            child: Text(
              'OR',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 27,
                color: const Color(0xff2e2a2a),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(248.0, 683.0),
            child: Container(
              width: 89.0,
              height: 89.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(1, 5),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(83.0, 683.0),
            child: Container(
              width: 89.0,
              height: 89.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(1, 5),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(268.0, 699.0),
            child:
                // Adobe XD layer: 'facebook' (shape)
                Container(
              width: 58.0,
              height: 58.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(99.0, 699.0),
            child:
                // Adobe XD layer: 'search' (shape)
                Container(
              width: 58.0,
              height: 58.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_cmzwu8 =
    '<svg viewBox="1.8 1.4 46.2 45.3" ><path transform="translate(-1.24, -0.61)" d="M 23.6685619354248 45.14823913574219 L 7.593013763427734 45.14823913574219 C 5.043890476226807 45.14823913574219 3 43.20657348632813 3 40.83341598510742 L 3.0229651927948 10.62964820861816 C 3.0229651927948 8.25649356842041 5.043890476226807 6.314824104309082 7.593013763427734 6.314824104309082 L 9.889519691467285 6.314824104309082 L 9.889519691467285 4.157412052154541 C 9.889519691467285 2.970834970474243 10.92294788360596 1.999999523162842 12.18602657318115 1.999999523162842 C 13.44910526275635 1.999999523162842 14.48253345489502 2.970834970474243 14.48253345489502 4.157412052154541 L 14.48253345489502 6.314824104309082 L 32.85458755493164 6.314824104309082 L 32.85458755493164 4.157412052154541 C 32.85458755493164 2.970834970474243 33.88801574707031 1.999999523162842 35.15109252929688 1.999999523162842 C 36.41416931152344 1.999999523162842 37.44760513305664 2.970834970474243 37.44760513305664 4.157412052154541 L 37.44760513305664 6.314824104309082 L 39.74410629272461 6.314824104309082 C 42.270263671875 6.314824104309082 44.33712005615234 8.25649356842041 44.33712005615234 10.62964820861816 L 44.33712005615234 23.57412147521973 L 39.74410629272461 23.57412147521973 L 39.74410629272461 19.2592945098877 L 7.593013763427734 19.2592945098877 L 7.593013763427734 40.83341598510742 L 23.6685619354248 40.83341598510742 L 23.6685619354248 45.14823913574219 Z M 46.93216705322266 34.33960723876953 L 48.56268692016602 32.80784225463867 C 49.45832443237305 31.96645545959473 49.45832443237305 30.6072826385498 48.56268692016602 29.76589393615723 L 46.93216705322266 28.23413276672363 C 46.03653717041016 27.39274215698242 44.58973693847656 27.39274215698242 43.69409942626953 28.23413276672363 L 42.06357955932617 29.76589393615723 L 46.93216705322266 34.33960723876953 Z M 45.30165481567383 35.87137222290039 L 33.7961540222168 46.68001174926758 C 33.38278579711914 47.06833648681641 32.78569793701172 47.30566024780273 32.18860244750977 47.30566024780273 L 29.40983200073242 47.30566024780273 C 28.76680946350098 47.30566024780273 28.26157569885254 46.83102798461914 28.26157569885254 46.22694778442383 L 28.26157569885254 43.61648178100586 C 28.26157569885254 43.03397750854492 28.51418876647949 42.49462509155273 28.92756271362305 42.08472061157227 L 40.43305587768555 31.27608680725098 L 45.30165481567383 35.87137222290039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
