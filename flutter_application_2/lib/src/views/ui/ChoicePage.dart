  import 'package:flutter/material.dart';
import 'package:flutter_application_2/src/views/ui/SignupPage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_2/src/views/ui/LoginPage.dart';

class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'KnowYourFest',
                  style: TextStyle(
                    fontFamily: 'Forte',
                    fontSize: 30,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.left,
                ),
                SvgPicture.string(
                  _svg_cmzwu8,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: Container(
              width: 340.0,
              height: 539.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.all(30),
                      child: SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginScreen(),));
                          },
                          child: Text('Login'),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage(),));
                        },
                        child: Text('Signup'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(30),
                    child: SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('Skip for now'),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                      ),
                      OutlinedButton(
                        onPressed: () {},
                      ),
                      OutlinedButton(
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(44.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

const String _svg_cmzwu8 =
    '<svg viewBox="1.8 1.4 46.2 45.3" ><path transform="translate(-1.24, -0.61)" d="M 23.6685619354248 45.14823913574219 L 7.593013763427734 45.14823913574219 C 5.043890476226807 45.14823913574219 3 43.20657348632813 3 40.83341598510742 L 3.0229651927948 10.62964820861816 C 3.0229651927948 8.25649356842041 5.043890476226807 6.314824104309082 7.593013763427734 6.314824104309082 L 9.889519691467285 6.314824104309082 L 9.889519691467285 4.157412052154541 C 9.889519691467285 2.970834970474243 10.92294788360596 1.999999523162842 12.18602657318115 1.999999523162842 C 13.44910526275635 1.999999523162842 14.48253345489502 2.970834970474243 14.48253345489502 4.157412052154541 L 14.48253345489502 6.314824104309082 L 32.85458755493164 6.314824104309082 L 32.85458755493164 4.157412052154541 C 32.85458755493164 2.970834970474243 33.88801574707031 1.999999523162842 35.15109252929688 1.999999523162842 C 36.41416931152344 1.999999523162842 37.44760513305664 2.970834970474243 37.44760513305664 4.157412052154541 L 37.44760513305664 6.314824104309082 L 39.74410629272461 6.314824104309082 C 42.270263671875 6.314824104309082 44.33712005615234 8.25649356842041 44.33712005615234 10.62964820861816 L 44.33712005615234 23.57412147521973 L 39.74410629272461 23.57412147521973 L 39.74410629272461 19.2592945098877 L 7.593013763427734 19.2592945098877 L 7.593013763427734 40.83341598510742 L 23.6685619354248 40.83341598510742 L 23.6685619354248 45.14823913574219 Z M 46.93216705322266 34.33960723876953 L 48.56268692016602 32.80784225463867 C 49.45832443237305 31.96645545959473 49.45832443237305 30.6072826385498 48.56268692016602 29.76589393615723 L 46.93216705322266 28.23413276672363 C 46.03653717041016 27.39274215698242 44.58973693847656 27.39274215698242 43.69409942626953 28.23413276672363 L 42.06357955932617 29.76589393615723 L 46.93216705322266 34.33960723876953 Z M 45.30165481567383 35.87137222290039 L 33.7961540222168 46.68001174926758 C 33.38278579711914 47.06833648681641 32.78569793701172 47.30566024780273 32.18860244750977 47.30566024780273 L 29.40983200073242 47.30566024780273 C 28.76680946350098 47.30566024780273 28.26157569885254 46.83102798461914 28.26157569885254 46.22694778442383 L 28.26157569885254 43.61648178100586 C 28.26157569885254 43.03397750854492 28.51418876647949 42.49462509155273 28.92756271362305 42.08472061157227 L 40.43305587768555 31.27608680725098 L 45.30165481567383 35.87137222290039 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
