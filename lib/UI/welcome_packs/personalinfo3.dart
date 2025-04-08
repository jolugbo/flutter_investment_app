import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class personalinfo3Page extends StatefulWidget {
  personalinfo3Page();

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
  Color maleColor = wizardGray;
  String femaleIcon = 'assets/femalegendericon.png';
  String femaleIcon2 = 'assets/femalegendericon2.png';
  String maleIcon2 = 'assets/maleicon2.png';
  String femaleIcon1 = 'assets/femalegendericon.png';
  String maleIcon1 = 'assets/maleicon.png';
  Color femaleColor = wizardGreen;
  String camIcon = 'assets/cameraicon.png';
  String uploadIcon = 'assets/uploadicon.png';
  int? _radioValue = 0;

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    tokenEntryHeight = size.height * 0.06;
    tokenEntryWidth = size.width * 0.12;
    return Scaffold(
      body: Stack(
        //overflow: Overflow.visible,
        children: <Widget>[
          AnimatedPositioned(
            top: 0,
            //right: -size.width * 0.2,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                  height: size.height,
                  width: size.width,
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
                height: size.height * 0.15,
                width: size.width,
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
                          width: size.width * 0.8,
                          child: Hero(
                            tag: "iconTag",
                            child: WidgetAnimator(
                              component: imgAnimation2(
                                url: leafIcon,
                                time: Duration(seconds: 3), beginx: 0.0,
                                endx: -0, beginy: 0, endy: -0.0,
                                width: size.width * 0.3,
                                //height: size.height * 0.3,
                                transition: PositionedTransition,
                              ),
                              transition: Transform,
                              animPattern: Curves.easeInOutCirc,
                              pixle: Colors.transparent,
                              time: Duration(seconds: 1),
                              animType: "nothing",
                              xAxis: -size.width * 0,
                              yAxis: -size.height * 0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
          AnimatedPositioned(
              top: size.height * 0.1,
              duration: Duration(seconds: 1),
              child: Container(
                  padding: EdgeInsets.all(size.width * 0.05),
                  alignment: Alignment.topLeft,
                  width: size.width,
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
                        height: size.height * 0.03,
                        child: LinearPercentIndicator(
                          width: size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 1,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: wizardOrange,
                        ),
                      ),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        height: size.height * 0.04,
                        child: Text(
                          'Gender',
                          style: purple18Style,
                        ),
                      ),
                      Container(
                        height: size.height * 0.23,
                        width: size.width * 0.5,
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
                                    width: size.width * 0.22,
                                    height: size.height * 0.15,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: buttonShape, // Button shape
                                          backgroundColor: femaleColor,
                                          elevation: 4),
                                      onPressed: () {
                                        setState(() {
                                          _radioValue = 0;
                                          maleColor = wizardGray;
                                          femaleColor = wizardGreen;
                                          femaleIcon = femaleIcon1;
                                          maleIcon = maleIcon1;
                                        });
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            height: size.height * 0.06,
                                            width: size.width * 0.06,
                                            decoration: BoxDecoration(
                                                color: accent,
                                                shape: BoxShape.circle),
                                            alignment: Alignment.center,
                                            child: Radio(
                                              value: 0,
                                              activeColor: wizardDeepGreen,
                                              groupValue: _radioValue,
                                              onChanged: (val) {
                                                setState(() {
                                                  _radioValue = val;
                                                  maleColor = wizardGray;
                                                  femaleColor = wizardGreen;
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
                                    ),
                                  ),
                                  Container(
                                      //margin: EdgeInsets.all(1.5),
                                      width: size.width * 0.16,
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
                                    width: size.width * 0.22,
                                    height: size.height * 0.15,
                                    child:  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          shape: buttonShape, // Button shape
                                          backgroundColor: maleColor,
                                          elevation: 4),
                                      onPressed: () {
                                        setState(() {
                                          femaleColor = wizardGray;
                                          maleColor = wizardGreen;
                                          femaleIcon = femaleIcon2;
                                          maleIcon = maleIcon2;
                                          _radioValue = 1;
                                        });
                                      },
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: size.width * 0.06,
                                            height: size.height * 0.06,
                                            decoration: BoxDecoration(
                                                color: accent,
                                                shape: BoxShape.circle),
                                            alignment: Alignment.center,
                                            child: Radio(
                                              activeColor: wizardDeepGreen,
                                              value: 1,
                                              groupValue: _radioValue,
                                              onChanged: (val) {
                                                setState(() {
                                                  femaleColor = wizardGray;
                                                  maleColor = wizardGreen;
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
                                    ),
                                  ),
                                  Container(
                                      //margin: EdgeInsets.all(1.5),
                                      width: size.width * 0.16,
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
                        height: size.height * 0.02,
                      ),
                      Container(
                        height: size.height * 0.04,
                        child: Text(
                          'Passport Photograph',
                          style: purple18Style,
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        child: Text(
                          'Take a selfie with your full-face in view and both eyes open',
                          style: dark14Style,
                        ),
                      ),
                      Container(
                        height: 80.0,
                        width: size.height,
                        child: FittedBox(
                          child: FloatingActionButton(
                              child: Stack(
                                //overflow: Overflow.visible,
                                children: <Widget>[
                                  Image(
                                    image: AssetImage(camIcon),
                                    width: 35,
                                    alignment: Alignment.center,
                                  ),
                                  Positioned(
                                    top: 20,
                                    left: 27,
                                    child: Image(
                                      image: AssetImage(uploadIcon),
                                      width: 10,
                                      alignment: Alignment.center,
                                    ),
                                  )
                                ],
                              ),
                              backgroundColor: accent,
                              onPressed: () {}),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ButtonTheme(
                            minWidth: size.width,
                            height: 50.0,
                            child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: buttonShape, // Button shape
    backgroundColor: wizardGreen, // Button color
  ),
                              child: Text(
                                'Confirm & Proceed',
                                style: lightBodyStyle,
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/getStarted');
                              },
                            )),
                        width: size.width,
                        height: size.height * 0.1,
                      ),
                    ],
                  ))),
          AnimatedPositioned(
              top: size.height * 0.92,
              duration: Duration(seconds: 1),
              child: Container(
                  //color: Colors.red,
                  alignment: Alignment.center,
                  height: size.height * 0.1,
                  width: size.width,
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
