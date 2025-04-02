import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';

class registerPage extends StatefulWidget {
  registerPage();

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<registerPage>
    with TickerProviderStateMixin {
  String bgMain1 = 'assets/leafBG.png';
  String bgMain2 = 'assets/regbg.png';
  String leafIcon = 'assets/leaficon.png';
  String setupIcon = 'assets/setupicon.png';
  double confimationPosition = 1;
  bool previouslySignedIn = true;
  final int _numCheckers = 4;
  int _currentChecker = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numCheckers; i++) {
      list.add(i == _currentChecker ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
      height: 5.0,
      width: MediaQuery.of(context).size.width * 0.18,
      decoration: BoxDecoration(
        color: isActive ? paydayGreen : paydayGray,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        //overflow: Overflow.visible,
        children: <Widget>[
          AnimatedPositioned(
            top: 0,
            right: -MediaQuery.of(context).size.width * 0.2,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width,
                child: imgAnimation2(
                  url: bgMain1,
                  beginx: 0.03,
                  endx: -0,
                  beginy: 0.2,
                  endy: -0.0,
                  time: Duration(seconds: 4),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  transition: PositionedTransition,
                ),
              ),
              transition: Transform,
              animPattern: Curves.easeIn,
              pixle: Colors.transparent,
              time: Duration(seconds: 1),
              animType: "nothing",
              xAxis: 0,
              yAxis: 0,
            ),
          ),
          AnimatedPositioned(
            top: MediaQuery.of(context).size.height * 0.25,
            bottom: MediaQuery.of(context).size.height * 0.05,
            right: -MediaQuery.of(context).size.width * 0.05,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: imgAnimation2(
                  url: bgMain2,
                  beginx: 0.03,
                  endx: -0,
                  beginy: 0.2,
                  endy: -0.0,
                  time: Duration(seconds: 3),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  transition: PositionedTransition,
                ),
              ),
              transition: Transform,
              animPattern: Curves.easeIn,
              pixle: Colors.transparent,
              time: Duration(seconds: 1),
              animType: "nothing",
              xAxis: 0,
              yAxis: 0,
            ),
          ),
          AnimatedPositioned(
              top: 0,
              duration: Duration(seconds: 1),
              child: Container(
                //color: Colors.red,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: "iconTag",
                  child: WidgetAnimator(
                    component: imgAnimation2(
                      url: 'assets/logo.png',
                      time: Duration(seconds: 3),
                      beginx: 0,
                      endx: -0,
                      beginy: 0,
                      endy: 0,
                      width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.3,
                      transition: PositionedTransition,
                    ),
                    transition: Transform,
                    animPattern: Curves.easeInOutCirc,
                    pixle: Colors.transparent,
                    time: Duration(seconds: 1),
                    animType: "nothing",
                    xAxis: 0,
                    yAxis: 0,
                  ),
                  transitionOnUserGestures: true,
                ),
              )),
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.92,
              duration: Duration(seconds: 1),
              child: Container(
                  //color: Colors.red,
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'Need help?  ',
                      style: footerGrayStyle,
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Visit our support center.',
                          style: footerGreenStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, '/termsAndCondition');
                            },
                        ),
                      ],
                    ),
                  ))),
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.15,
              duration: Duration(seconds: 1),
              child: Container(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Create your PayDay Investor account',
                        style: dark24Style,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'First Name',
                                  style: purple14Style,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    cursorColor: paydayGreen,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: paydayGreen),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Last Name',
                                  style: purple14Style,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.06,
                                  child: TextField(
                                    textAlignVertical: TextAlignVertical.bottom,
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 18,
                                    ),
                                    cursorColor: paydayGreen,
                                    decoration: InputDecoration(
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: paydayGreen),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Email Address',
                              style: purple14Style,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                cursorColor: paydayGreen,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: paydayGreen),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Password',
                              style: purple14Style,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                cursorColor: paydayGreen,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: paydayGreen),
                                  ),
                                  suffixIcon: Icon(Icons.remove_red_eye),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: _buildPageIndicator(),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Referral code',
                              style: purple14Style,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.06,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.bottom,
                                textAlign: TextAlign.left,
                                maxLines: 1,
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                                cursorColor: paydayGreen,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: paydayGreen),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        //padding: const EdgeInsets.all(16.0),
                        alignment: Alignment.centerLeft,
                        //color: Colors.red,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Switch(
                              value: true,
                              activeTrackColor: paydayGreen,
                              onChanged: (value) {},
                              inactiveTrackColor: paydayGreen,
                              activeColor: paydayGreen,
                              inactiveThumbColor: accent,
                            ),
                            Flexible(
                                child: RichText(
                              textAlign: TextAlign.start,
                              overflow: TextOverflow.clip,
                              text: TextSpan(
                                text: 'Agree to the ',
                                style: footerGrayStyle,
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'terms of service',
                                    style: footerGreenStyle,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, '/termsAndCondition');
                                      },
                                  ),
                                  TextSpan(
                                    text: ' and our ',
                                    style: footerGrayStyle,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                            context, '/termsAndCondition');
                                      },
                                  ),
                                  TextSpan(
                                      text: 'privacy policy',
                                      style: footerGreenStyle,
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushNamed(
                                              context, '/termsAndCondition');
                                        }),
                                ],
                              ),
                            ))
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Hero(
                          tag: "btnInvestingTag",
                          child: ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: buttonShape, // Button shape
                                  backgroundColor: paydayGreen, // Button color
                                ),
                                onPressed: () {
                                  confimationPosition = 0.03;
                                },
                                child: Text(
                                  'Create Account',
                                  style: lightBodyStyle,
                                ),
                              )),
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: 'Already have an account? ',
                            style: footerGrayStyle,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Login here',
                                style: footerGreenStyle,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, '/termsAndCondition');
                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ))),
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * confimationPosition,
              height: MediaQuery.of(context).size.height * 0.95,
              duration: Duration(milliseconds: 500),
              child: Container(
                  color: accent,
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,
                      0,
                      MediaQuery.of(context).size.width * 0.05,
                      0),
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: Image(
                          image: AssetImage(leafIcon),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Account Setup',
                          style: dark24Style,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(setupIcon),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(
                              MediaQuery.of(context).size.width * 0.07),
                          child: Text(
                            'Your PayDay Investor account is being created and an email verification link has been sent to',
                            style: dark16Style,
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                            'mail@xxx.ng',
                            style: greenBodyStyle,
                            textAlign: TextAlign.center,
                          )),
                      Container(
                          //color: Colors.red,
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'Wrong email address?',
                              style: footerGrayStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: ' edit here',
                                  style: footerGreenStyle,
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      setState(() {
                                        confimationPosition = 1;
                                      });
                                    },
                                ),
                              ],
                            ),
                          )),
                      Container(
                        alignment: Alignment.center,
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: buttonShape, // Button shape
    backgroundColor: paydayGreen, // Button color
  ),
  onPressed: () {
                                Navigator.pushNamed(
                                    context, '/registerationToken');
  },
  child: Text(
    'Confirm email address',
    style: lightBodyStyle,
  ),
)

                            
                            ),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
