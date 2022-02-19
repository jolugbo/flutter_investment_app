import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class personalinfo3Page extends StatefulWidget {
  personalinfo3Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Personalinfo3PageState createState() => _Personalinfo3PageState();
}

class _Personalinfo3PageState extends State<personalinfo3Page>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  double tokenEntryWidth = 0;
  double tokenEntryHeight = 0;
  String bgMain = 'assets/purplebg.png';
  String maleIcon = 'assets/maleicon.png';
  Color maleColor = paydayGray;
  String femaleIcon = 'assets/femalegendericon.png';
  String femaleIcon2 = 'assets/femalegendericon2.png';
  String maleIcon2 = 'assets/maleicon2.png';
  String femaleIcon1 = 'assets/femalegendericon.png';
  String maleIcon1 = 'assets/maleicon.png';
  Color femaleColor = paydayGreen;
  String camIcon = 'assets/cameraicon.png';
  String uploadIcon = 'assets/uploadicon.png';
  int _radioValue =0;

  @override
  State<StatefulWidget> initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    tokenEntryHeight = MediaQuery.of(context).size.height * 0.06;
    tokenEntryWidth = MediaQuery.of(context).size.width * 0.12;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          AnimatedPositioned(
            top: 0,
            //right: -MediaQuery.of(context).size.width * 0.2,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(bgMain),
                  ))),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: paydayDark,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Hero(
                            tag: "iconTag",
                            child: WidgetAnimator(
                              component: imgAnimation2(
                                url: leafIcon,
                                time: Duration(seconds: 3),beginx:0.0 ,endx: -0, beginy: 0 ,endy: -0.0,
                                width: MediaQuery.of(context).size.width * 0.3,
                                //height: MediaQuery.of(context).size.height * 0.3,
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
              top: MediaQuery.of(context).size.height * 0.1,
              duration: Duration(seconds: 1),
              child: Container(
                  padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Text(
                        'Confirm your details',
                        style: dark18Style,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Personal Information',
                        style: purple28Style,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: paydayOrange,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Text(
                          'Gender',
                          style: purple18Style,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.23,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    //color:Colors.red,
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      elevation: 4.0,
                                      onPressed: () {
                                        setState(() {
                                          _radioValue = 0;
                                          maleColor = paydayGray;
                                          femaleColor = paydayGreen;
                                          femaleIcon = femaleIcon1;
                                          maleIcon = maleIcon1;
                                        });
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context).size.height * 0.06,
                                            width: MediaQuery.of(context).size.width * 0.06,
                                            decoration: BoxDecoration(
                                                color: accent,
                                                shape: BoxShape.circle),
                                            alignment: Alignment.center,
                                            child: Radio(
                                              value: 0,
                                              activeColor: paydayDeepGreen,
                                              groupValue: _radioValue,
                                              onChanged: (val) {
                                                setState(() {
                                                  _radioValue = val;
                                                  maleColor = paydayGray;
                                                  femaleColor = paydayGreen;
                                                  femaleIcon = femaleIcon1;
                                                  maleIcon = maleIcon1;
                                                });
                                              },
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(femaleIcon),
                                          )
                                        ],
                                      ),
                                      color: femaleColor,
                                    ),
                                  ),
                                  Container(
                                      //margin: EdgeInsets.all(1.5),
                                      width: MediaQuery.of(context).size.width *
                                          0.16,
                                      child: Text(
                                        'Female',
                                        textAlign: TextAlign.center,
                                        style: dark16Style,
                                      )),
                                ],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.22,
                                    height: MediaQuery.of(context).size.height *
                                        0.15,
                                    child: RaisedButton(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      elevation: 4.0,
                                      onPressed: () {
                                        setState(() {
                                          femaleColor = paydayGray;
                                          maleColor = paydayGreen;
                                          femaleIcon = femaleIcon2;
                                          maleIcon = maleIcon2;
                                          _radioValue = 1;
                                        });
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: MediaQuery.of(context).size.width * 0.06,
                                            height: MediaQuery.of(context).size.height * 0.06,
                                            decoration: BoxDecoration(
                                                color: accent,
                                                shape: BoxShape.circle),
                                            alignment: Alignment.center,
                                            child: Radio(
                                              activeColor: paydayDeepGreen,
                                              value: 1,
                                              groupValue: _radioValue,
                                              onChanged: (val) {
                                              setState(() {
                                                femaleColor = paydayGray;
                                                maleColor = paydayGreen;
                                                femaleIcon = femaleIcon2;
                                                maleIcon = maleIcon2;
                                                _radioValue = val;
                                              });
                                            },
                                            ),
                                          ),
                                          Image(
                                            image: AssetImage(maleIcon),
                                          )
                                        ],
                                      ),
                                      color: maleColor,
                                    ),
                                  ),
                                  Container(
                                      //margin: EdgeInsets.all(1.5),
                                      width: MediaQuery.of(context).size.width *
                                          0.16,
                                      child: Text(
                                        'Male',
                                        textAlign: TextAlign.center,
                                        style: dark16Style,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        child: Text(
                          'Passport Photograph',
                          style: purple18Style,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Text(
                          'Take a selfie with your full-face in view and both eyes open',
                          style: dark14Style,
                        ),
                      ),
                      Container(
                        height: 80.0,
                        width: MediaQuery.of(context).size.height,
                        child: FittedBox(
                          child: FloatingActionButton(
                              child: Stack(
                                overflow: Overflow.visible,
                                children: <Widget>[
                                  Image(image: AssetImage(camIcon),width: 35,alignment: Alignment.center,),
                                  Positioned(
                                    top: 20,
                                    left:27,
                                    child:Image(image: AssetImage(uploadIcon),width: 10,alignment: Alignment.center,),
                                  )
                                ],
                              ),
                              backgroundColor: accent,
                              onPressed: () {
                              }),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: RaisedButton(
                              shape: buttonShape,
                              child: Text(
                                'Confirm & Proceed',
                                style: lightBodyStyle,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/getStarted');
                              },
                              color: paydayGreen,
                            )),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                    ],
                  ))),
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
        ],
      ),
    );
  }
}
