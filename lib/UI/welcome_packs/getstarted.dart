import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class getStartedPage extends StatefulWidget {
  getStartedPage();

  @override
  _GetStartedPageState createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<getStartedPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  double initialDraggableHeight = 0;
  double maximumDraggableHeight = 0;
  double minimumDraggableHeight = 0;
  String bgMain = 'assets/loginbg2.png';
  String startinvestingIcon = 'assets/startinvesting.png';
  String fundwalletIcon = 'assets/fundwallet.png';
  String dashboardIcon = 'assets/dashboard.png';
  String kycdocumentationIcon = 'assets/kycdocumentation.png';
  String portfolioIcon = 'assets/portfolio.png';
  String supportIcon = 'assets/support.png';
  String camIcon = 'assets/camera.png';
  String confettiIcon = 'assets/confettiicon.png';
  String bgMain2 = 'assets/loginbg2.png';
  String darkbarIcon = 'assets/darkbar.png';
  double sliderPosition = 1.2;
  double initialHeight = 0;
  PanelController panelController = PanelController();
  Widget slider = Container();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Material(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.25,
              bottom: MediaQuery.of(context).size.height * 0.05,
              //right: -MediaQuery.of(context).size.width * 0.05,
              duration: Duration(seconds: 1),
              child: WidgetAnimator(
                component: Container(
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: imgAnimation2(
                    url: bgMain2,
                    time: Duration(seconds: 2),
                    beginx: 0.1,
                    endx: -0,
                    beginy: -0.04,
                    endy: 0,
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
            Positioned(
                top: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 30,
                              color: wizardDark,
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Hero(
                              tag: "iconTag",
                              child: WidgetAnimator(
                                component: imgAnimation2(
                                  url: leafIcon,
                                  beginx: 0.0,
                                  endx: -0,
                                  beginy: 0,
                                  endy: -0.0,
                                  time: Duration(seconds: 3),
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  transition: PositionedTransition,
                                ),
                                transition: Transform,
                                animPattern: Curves.easeInOutCirc,
                                pixle: Colors.transparent,
                                time: Duration(seconds: 1),
                                animType: "nothing",
                                xAxis: -MediaQuery.of(context).size.width * 0,
                                yAxis: -MediaQuery.of(context).size.height * 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
                top: MediaQuery.of(context).size.height * 0.13,
                height: MediaQuery.of(context).size.height * 0.95,
                duration: Duration(milliseconds: 500),
                child: Container(
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
                            child: Text('Congratulations!',
                                style: purple28Style,
                                textAlign: TextAlign.center)),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                            child: Text(
                          'Your wealth wizard account has been setup successfully. \n',
                          style: purple18Style,
                        )),
                        Container(
                          alignment: Alignment.center,
                          child: Image(
                            image: AssetImage(confettiIcon),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(
                                0,
                                MediaQuery.of(context).size.height * 0.02,
                                0,
                                MediaQuery.of(context).size.width * 0.02),
                            child: Text(
                              'Your investment account is restricted to the following financial thresholds:',
                              style: purple16Style,
                              textAlign: TextAlign.left,
                            )),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.check,
                                        color: wizardGreen,
                                      ),
                                      Text(
                                          ' Single maximum deposit of N20,000  ',
                                          style: purple16Style),
                                    ],
                                  ),
                                ),
                                Container(
                                  //height: MediaQuery.of(context).size.height * 0.05,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.check,
                                        color: wizardGreen,
                                      ),
                                      Text(
                                          ' Single maximum withdrawal of N30,000  ',
                                          style: purple16Style),
                                    ],
                                  ),
                                ),
                                Container(
                                  //height: MediaQuery.of(context).size.height * 0.05,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.check,
                                        color: wizardGreen,
                                      ),
                                      Text(' Maximum balance of N1,000,000 ',
                                          style: purple16Style),
                                    ],
                                  ),
                                ),
                              ]),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                            child: Text(
                          'Upgrade your profile to unleash the full potential of your wealth wizard account',
                          style: purple16Style,
                          textAlign: TextAlign.left,
                        )),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          alignment: Alignment.center,
                          color: accent,
                          child: ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50.0,
                              buttonColor: accent,
                              child: OutlinedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: buttonShape,
                                  side: BorderSide(
                                    color: wizardGreen,
                                    style: BorderStyle.solid,
                                    width: 0.8,
                                  ),
                                  elevation: 0.8,
                                  backgroundColor: accent,
                                ),
                                child: Text(
                                  'Upgrade your profile',
                                  style: green14Style,
                                ),
                                onPressed: () => {
                                  Navigator.pushNamed(context, '/kycUpload')
                                }, //callback when button is clicked
                              )),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50.0,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: buttonShape, // Button shape
                                  backgroundColor: wizardGreen, // Button color
                                ),
                                child: Text(
                                  'Get started',
                                  style: lightBodyStyle,
                                ),
                                onPressed: () {
                                  setState(() {
                                    sliderPosition = 0;
                                  });
                                },
                              )),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                      ],
                    ))),
            AnimatedPositioned(
              top: MediaQuery.of(context).size.height * sliderPosition,
              duration: Duration(milliseconds: 400),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: wizardOverlayLightPurple,
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.4,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.transparent,
                      ),
                      ClipRRect(
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(18)),
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width,
                          color: accent,
                          child: Stack(
                            children: <Widget>[
                              AnimatedPositioned(
                                top: MediaQuery.of(context).size.height * 0.01,
                                bottom:
                                    MediaQuery.of(context).size.height * 0.03,
                                //right: -MediaQuery.of(context).size.width * 0.05,
                                duration: Duration(seconds: 1),
                                child: WidgetAnimator(
                                  component: Container(
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: imgAnimation2(
                                      url: bgMain2,
                                      time: Duration(seconds: 4),
                                      beginx: 0.3,
                                      endx: 0.2,
                                      beginy: -0.04,
                                      endy: 0,
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height,
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
                                  duration: Duration(seconds: 1),
                                  child: Container(
                                    alignment: Alignment.topCenter,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Container(
                                          alignment: Alignment.topCenter,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                          child: ButtonTheme(
                                              height: 10.0,
                                              child: OutlinedButton(
                                                child: Image(
                                                  image:
                                                      AssetImage(darkbarIcon),
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      0.2,
                                                ),
                                                onPressed: () => {
                                                  setState(() {
                                                    sliderPosition = 1.2;
                                                  })
                                                },
                                                style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                    color: Colors.transparent,
                                                    style: BorderStyle.solid,
                                                    //width: 0.8,
                                                  ),
                                                  elevation: 0.8,
                                                ),
                                              )),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                        ),
                                        Text(
                                          'Get started on wealth wizard',
                                          style: darkMediumStyle,
                                          textAlign: TextAlign.center,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.03,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Container(
                                              height: 1.0,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              color: wizardGray),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.02,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: Text(
                                            'Get started on your wealth wizard account. select one from the options below to continue',
                                            style: purpleSmallerBodyStyle,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.05,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: <Widget>[
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            child: Image(
                                                              image: AssetImage(
                                                                  startinvestingIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/setUpGoal')
                                                            },
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                //width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            child: Image(
                                                              image: AssetImage(
                                                                  dashboardIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {},
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                //width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            child: Image(
                                                              image: AssetImage(
                                                                  portfolioIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {
                                                              Navigator.pushNamed(
                                                                  context,
                                                                  '/roboAdvisor')
                                                            }, //callback when button is clicked
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                //width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                          )),
                                                    ]),
                                                Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: <Widget>[
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                //width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                            child: Image(
                                                              image: AssetImage(
                                                                  kycdocumentationIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/login')
                                                            }, //callback when button is clicked
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              shape:
                                                                  buttonShape,
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                              ),
                                                              elevation: 0.8,
                                                              backgroundColor:
                                                                  wizardGreen,
                                                            ),

                                                            child: Image(
                                                              image: AssetImage(
                                                                  fundwalletIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/login')
                                                            }, //callback when button is clicked
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.11,
                                                          height: 50.0,
                                                          child: OutlinedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              shape:
                                                                  buttonShape,
                                                              side: BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                //width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                              backgroundColor:
                                                                  wizardGreen,
                                                            ),

                                                            child: Image(
                                                              image: AssetImage(
                                                                  supportIcon),
                                                              width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width *
                                                                  0.2,
                                                            ),
                                                            onPressed: () => {
                                                              Navigator
                                                                  .pushNamed(
                                                                      context,
                                                                      '/login')
                                                            }, //callback when button is clicked
                                                          )),
                                                    ]),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          //padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.08, MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.1),
                        ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
