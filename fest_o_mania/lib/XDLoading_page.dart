import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLoading_page extends StatelessWidget {
  XDLoading_page({
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
            offset: Offset(51.0, 333.0),
            child:
                // Adobe XD layer: 'Logo' (group)
                SizedBox(
              width: 313.0,
              height: 63.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(81.0, 10.0, 232.0, 44.0),
                    size: Size(313.0, 63.0),
                    pinRight: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Fest-O-Mania',
                      style: TextStyle(
                        fontFamily: 'Forte',
                        fontSize: 40,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 63.0, 63.0),
                    size: Size(313.0, 63.0),
                    pinLeft: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child:
                        // Adobe XD layer: 'edit_calendar-24px' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 0.0, 63.0, 63.0),
                          size: Size(63.0, 63.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: Container(
                            decoration: BoxDecoration(),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(7.9, 5.2, 52.7, 55.0),
                          size: Size(63.0, 63.0),
                          pinLeft: true,
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          child: SvgPicture.string(
                            _svg_snczmf,
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
        ],
      ),
    );
  }
}

const String _svg_snczmf =
    '<svg viewBox="7.9 5.2 52.7 55.0" ><path transform="translate(4.86, 3.24)" d="M 26.56562805175781 54.36806488037109 L 8.236806869506836 54.36806488037109 C 5.330378532409668 54.36806488037109 3 52.01150512695313 3 49.13125991821289 L 3.02618408203125 12.47361278533936 C 3.02618408203125 9.59337043762207 5.330378532409668 7.236806869506836 8.236806869506836 7.236806869506836 L 10.85520935058594 7.236806869506836 L 10.85520935058594 4.618403434753418 C 10.85520935058594 3.178282022476196 12.03349113464355 2.000000238418579 13.47361373901367 2.000000238418579 C 14.91373443603516 2.000000238418579 16.09201622009277 3.178282022476196 16.09201622009277 4.618403434753418 L 16.09201622009277 7.236806869506836 L 37.03924179077148 7.236806869506836 L 37.03924179077148 4.618403434753418 C 37.03924179077148 3.178282022476196 38.21752548217773 2.000000238418579 39.65764617919922 2.000000238418579 C 41.09776306152344 2.000000238418579 42.27604675292969 3.178282022476196 42.27604675292969 4.618403434753418 L 42.27604675292969 7.236806869506836 L 44.89445114135742 7.236806869506836 C 47.77469635009766 7.236806869506836 50.13125610351563 9.59337043762207 50.13125610351563 12.47361278533936 L 50.13125610351563 28.18403053283691 L 44.89445114135742 28.18403053283691 L 44.89445114135742 22.94722557067871 L 8.236806869506836 22.94722557067871 L 8.236806869506836 49.13125991821289 L 26.56562805175781 49.13125991821289 L 26.56562805175781 54.36806488037109 Z M 53.09004974365234 41.2498664855957 L 54.94911575317383 39.39080047607422 C 55.97029113769531 38.36962127685547 55.97029113769531 36.72002792358398 54.94911575317383 35.6988525390625 L 53.09004974365234 33.83978652954102 C 52.06887435913086 32.81860733032227 50.41927719116211 32.81860733032227 49.39810180664063 33.83978652954102 L 47.53903961181641 35.6988525390625 L 53.09004974365234 41.2498664855957 Z M 51.23098754882813 43.10893249511719 L 38.11278533935547 56.22713470458984 C 37.64147186279297 56.69844818115234 36.96068954467773 56.98647308349609 36.27990341186523 56.98647308349609 L 33.11163711547852 56.98647308349609 C 32.37848663330078 56.98647308349609 31.80243682861328 56.41042709350586 31.80243682861328 55.67727279663086 L 31.80243682861328 52.50900268554688 C 31.80243682861328 51.80203247070313 32.09045791625977 51.14743041992188 32.56177139282227 50.64993667602539 L 45.67996978759766 37.53173828125 L 51.23098754882813 43.10893249511719 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fk17je =
    '<svg viewBox="147.2 554.1 1.0 1.0" ><path  d="M 147.2017364501953 554.0824584960938" fill="none" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
