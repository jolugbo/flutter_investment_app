import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';

class loginPage extends StatefulWidget {
  loginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<loginPage> with TickerProviderStateMixin {
  String bgMain1 = 'assets/loginbg1.png';
  String bgMain2 = 'assets/loginbg2.png';
  String userImg = 'assets/tobi.png';
  String fingerprintImg = 'assets/fingerprint.png';
  String faceidImg = 'assets/faceid.png';
  bool previouslySignedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        //overflow: Overflow.visible,
        children: <Widget>[
          if (!previouslySignedIn)
            AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.25,
              bottom: MediaQuery.of(context).size.height * 0.05,
              left: -MediaQuery.of(context).size.width * 0.1,
              duration: Duration(seconds: 1),
              child: WidgetAnimator(
                component: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: imgAnimation2(
                    url: bgMain1,
                    beginx: 0,
                    endx: -0.1,
                    beginy: 0,
                    endy: 0,
                    time: Duration(seconds: 2),
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
          if (previouslySignedIn)
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
                    beginx: 0.1,
                    endx: -0,
                    beginy: 0,
                    endy: 0,
                    time: Duration(seconds: 2),
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
          if (!previouslySignedIn)
            AnimatedPositioned(
                top: MediaQuery.of(context).size.height * 0.3,
                duration: Duration(seconds: 1),
                child: Container(
                    //color: Colors.red,
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Login to your account',
                          style: purple24Style,
                          textAlign: TextAlign.left,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                labelText: 'Email Address ',
                                labelStyle: purple14Style)),
                        TextField(
                            decoration: InputDecoration(
                                labelText: 'Password ',
                                labelStyle: purple14Style)),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          child: Text(
                            'Forgot password?',
                            style: footerGreenStyle,
                            textAlign: TextAlign.right,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    paydayGreen, // Set button color
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: lightBodyStyle,
                              ),
                            ),
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              text: 'New to PayDay Investor?  ',
                              style: footerGrayStyle,
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Create an account',
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
          if (previouslySignedIn)
            AnimatedPositioned(
                top: MediaQuery.of(context).size.height * 0.25,
                duration: Duration(seconds: 1),
                child: Container(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    alignment: Alignment.topLeft,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Text(
                              'Welcome back,\n Ladi',
                              style: purple24Style,
                              textAlign: TextAlign.left,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Container(
                                    width: 60.0,
                                    height: 60.0,
                                    alignment: Alignment.centerRight,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(userImg),
                                        ))),
                                RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Not you? ',
                                    style: footerGrayStyle,
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Switch accounts ',
                                        style: footerGreenStyle,
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(
                                                context, '/termsAndCondition');
                                          },
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        TextField(
                            decoration: InputDecoration(
                                labelText: 'Enter your password ',
                                labelStyle: purple18Style)),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          child: Text(
                            'Forgot password?',
                            style: footerGreenStyle,
                            textAlign: TextAlign.right,
                          ),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Hero(
                              tag: "btnLoginTag",
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height: 50.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        paydayGreen, // Set button color
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Login',
                                    style: lightBodyStyle,
                                  ),
                                ),
                              )),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Image(
                                image: AssetImage(fingerprintImg),
                                width: 50.0,
                                height: 50.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.03,
                              ),
                              Image(
                                image: AssetImage(faceidImg),
                                width: 50.0,
                                height: 50.0,
                              )
                            ]),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'Enable Biometric Login?',
                            style: buttonDefaultStyle,
                          ),
                        ),
                      ],
                    ))),
        ],
      ),
    );
  }
}
