import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class kycUploadPage extends StatefulWidget {
  kycUploadPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _KYCUploadPageState createState() => _KYCUploadPageState();
}
class _KYCUploadPageState extends State<kycUploadPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  String bgMain = 'assets/purplebg.png';
  String kycIcon = 'assets/kycicon.png';
  String kycIcon2 = 'assets/kycicon2.png';
  String kycIcon3 = 'assets/kycicon3.png';
  String headerText = 'Validate your identity';
  String middleHeaderText = 'Valid Identification';
  String bodyText = 'A copy of a valid government issued ID clearly displaying the name on your PayDay Investor account.';
  String startinvestingIcon = 'assets/startinvesting.png';
  String fundwalletIcon = 'assets/fundwallet.png';
  String dashboardIcon = 'assets/dashboard.png';
  String kycdocumentationIcon = 'assets/kycdocumentation.png';
  String portfolioIcon = 'assets/portfolio.png';
  String supportIcon = 'assets/support.png';
  String fileuploadicon = 'assets/fileuploadicon.png';
  String bgMain2 = 'assets/loginbg2.png';
  String darkbarIcon = 'assets/darkbar.png';
  int _currentPage = 0;
  bool showFirst = true;
  double sliderPosition = 0;
  //Widget slider;

  @override
  State<StatefulWidget> initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
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
                                time: Duration(seconds: 3),beginx:0.0,endx: -0, beginy: 0,endy: -0.0,
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
                        headerText,
                        style: purple22Style,
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Step '+ (_currentPage + 1).toString() + ' of 3',
                        style: dark16Style,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 0.33,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: paydayOrange,
                        ),
                      ),
                      AnimatedCrossFade(
                        duration: const Duration(seconds: 1),
                        firstChild: WidgetAnimator(
                          component: Container(
                            height: MediaQuery.of(context).size.height * 0.15,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                            child: imgAnimation2(url: kycIcon,time: Duration(seconds: 2),
                              width: MediaQuery.of(context).size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
                              height: MediaQuery.of(context).size.height * 0.15,transition: PositionedTransition,
                            ),),
                          transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                        ),
                        secondChild: Container(
                          height: MediaQuery.of(context).size.height * 0.15,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                          child: imgAnimation2(url: kycIcon2,time: Duration(seconds: 2),
                            width: MediaQuery.of(context).size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
                            height: MediaQuery.of(context).size.height * 0.15,transition: PositionedTransition,
                          ),),
                        crossFadeState: showFirst
                            ? CrossFadeState.showFirst
                            : CrossFadeState.showSecond,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        alignment: Alignment.center,
                        child: Text(
                          middleHeaderText,
                          style: purple22Style,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        child: Text(
                          bodyText,
                          style: dark16Style,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child:
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          alignment: Alignment.center,color: accent,
                          child: ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width,
                              height: 50.0,buttonColor: accent,
                              child:OutlineButton(
                                color: accent,
                                child: DropdownButton(
                                    icon: Icon(Icons.keyboard_arrow_down),
                                    elevation: 10,underline: SizedBox(),
                                    hint: Text('Select identification type'),
                                    isExpanded: false,dropdownColor: accent,
                                    items: [
                                      DropdownMenuItem(
                                        child: Text("International Passport"),
                                        value: 0,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Valid Driving License"),
                                        value: 1,
                                      ),
                                      DropdownMenuItem(
                                        child: Text("Permanent Voter’s Card"),
                                        value: 2,
                                      ),
                                      DropdownMenuItem(
                                          child: Text("National Identity Card"),
                                          value: 4
                                      )
                                    ],
                                    onChanged: (value) {
                                    }),
                                onPressed: () => {
                                  Navigator.pushNamed(context, '/kycUpload')
                                }, //callback when button is clicked
                                borderSide: BorderSide(
                                  color: paydayGreen,
                                  style: BorderStyle.solid,
                                  width: 0.8,
                                ),
                                highlightElevation: 0.8,
                              )

                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child:
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.check,color: paydayGreen,),
                              Text('International Passport',style: dark14Style,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: RaisedButton(
                              shape: buttonShape,
                              child: Text(
                                'Upload Identification',
                                style: lightBodyStyle,
                              ),
                              onPressed: () {
                                setState(() {
                                  _currentPage = ++_currentPage % 4;
                                  switch(_currentPage) {
                                    case 0:
                                      showFirst = true;
                                      headerText = 'Validate your identity';
                                      middleHeaderText = 'Valid Identification';
                                      bodyText = 'A copy of a valid government issued ID clearly displaying the name on your PayDay Investor account.';
                                      break;
                                    case 1:
                                      showFirst = false;
                                      headerText = 'Validate your address';
                                      middleHeaderText = 'Utility Bill';
                                      bodyText = 'A copy of a bill not more than 3 months old clearly displaying the address on your PayDay Investor account.';
                                      break;
                                    case 2:
                                      kycIcon = kycIcon3;
                                      showFirst = true;
                                      headerText = 'Signature';
                                      middleHeaderText = 'Authorized Signature';
                                      bodyText = 'Write your signature on a piece of plain paper and take a clear picture of your signature';
                                      break;
                                    case 3:
                                      _currentPage = 2;
                                      sliderPosition = 0;
                                      break;
                                    default:
                                      headerText = 'Signature';
                                      middleHeaderText = 'Valid Identification';
                                      bodyText = 'A copy of a valid government issued ID clearly displaying the name on your PayDay Investor account.';
                                  }
                                });
                              },
                              highlightElevation: 20,
                              color: paydayGreen,
                            )),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child:RaisedButton(
                              shape: buttonShape,
                              color: accent,
                              child: Text('Skip, upload later',style: green18Style,),
                              onPressed: () => {
                                setState((){
                                  sliderPosition = 0;
                              })
                              },
                              highlightElevation: 20,
                            )
                        ),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
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
          AnimatedPositioned(
            top: MediaQuery.of(context).size.height * sliderPosition,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: paydayOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child:
                      Container(
                        height: MediaQuery.of(context).size.height * 0.8,
                        width: MediaQuery.of(context).size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: MediaQuery.of(context).size.height * 0.05,
                              bottom: MediaQuery.of(context).size.height * 0.05,
                              //right: -MediaQuery.of(context).size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: MediaQuery.of(context).size.height,
                                  width: MediaQuery.of(context).size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),beginx:0.2,endx: 0.1, beginy: -0.04,endy: 0,
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
                              //top: MediaQuery.of(context).size.height * 0.1,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: MediaQuery.of(context).size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlineButton(
                                            child: Image(
                                              image:AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context).size.width * 0.2,),
                                            onPressed: () => {
                                              setState(() {
                                                sliderPosition = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              style: BorderStyle.solid,
                                              //width: 0.8,
                                            ),
                                            highlightElevation: 0.8,
                                          )),
                                    ),
                                    Text( 'Good job Ayo!', style: purple28Style,textAlign: TextAlign.center,),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.05,0,MediaQuery.of(context).size.width * 0.05,MediaQuery.of(context).size.width * 0.05),
                                      child: Text('Your profile validation documents have been successfully uploaded for review',
                                        style:purple18Style,textAlign: TextAlign.center,
                                      ),
                                    ),

                                    WidgetAnimator(
                                      component: Container(
                                        height: MediaQuery.of(context).size.height * 0.2,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                                        child: imgAnimation2(url: fileuploadicon,time: Duration(seconds: 2),
                                          width: MediaQuery.of(context).size.width * 0.9,beginx:0,endx: -0, beginy: 0,endy: -0.0,
                                          height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,
                                        ),),
                                      transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1,0,MediaQuery.of(context).size.width * 0.1,MediaQuery.of(context).size.width * 0.05),
                                      child: Text('You will receive an email from us with the status of your profile validation in under 24 hours (excluding weekdays and public holidays)',
                                        style: purple14Style,textAlign: TextAlign.left,),
                                    ),
                                    Padding(
                                      padding:EdgeInsets.symmetric(horizontal: 5.0),
                                      child: Container(
                                          height: 0.5,width: MediaQuery.of(context).size.width,
                                          color: paydayGray),
                                    ),
                                    Container(
                                      height: MediaQuery.of(context).size.height * 0.25,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                                mainAxisSize:MainAxisSize.max,
                                                crossAxisAlignment:CrossAxisAlignment.center,
                                                mainAxisAlignment:MainAxisAlignment.spaceAround,
                                                children: <
                                                    Widget>[
                                                  ButtonTheme(
                                                      minWidth: MediaQuery.of(context).size.width * 0.11,
                                                      height: 50.0,
                                                      child: OutlineButton(
                                                        child: Image(image:AssetImage(startinvestingIcon),width: MediaQuery.of(context).size.width * 0.2,),
                                                        onPressed: () => {
                                                          Navigator.pushNamed(context, '/setUpGoal')
                                                        }, //callback when button is clicked
                                                        borderSide: BorderSide(
                                                          color: Colors.transparent,
                                                          style: BorderStyle.solid,
                                                          //width: 0.8,
                                                        ),
                                                        highlightElevation: 0.8,
                                                      )),
                                                  ButtonTheme(
                                                      minWidth: MediaQuery.of(context).size.width * 0.11,
                                                      height: 50.0,
                                                      child: OutlineButton(
                                                        child: Image(image:AssetImage(dashboardIcon),width: MediaQuery.of(context).size.width * 0.2,),
                                                        onPressed: () => {
                                                          Navigator.pushNamed(context, '/roboAdvisor')
                                                        }, //callback when button is clicked
                                                        borderSide: BorderSide(
                                                          color: Colors.transparent,
                                                          style: BorderStyle.solid,
                                                          //width: 0.8,
                                                        ),
                                                        highlightElevation: 0.8,
                                                      )),
                                                  ButtonTheme(
                                                      minWidth: MediaQuery.of(context).size.width * 0.11,
                                                      height: 50.0,
                                                      child: OutlineButton(
                                                        child: Image(image:AssetImage(portfolioIcon),width: MediaQuery.of(context).size.width * 0.2,),
                                                        onPressed: () => {
                                                          Navigator.pushNamed(context, '/login')
                                                        }, //callback when button is clicked
                                                        borderSide: BorderSide(
                                                          color: Colors.transparent,
                                                          style: BorderStyle.solid,
                                                          //width: 0.8,
                                                        ),
                                                        highlightElevation: 0.8,
                                                      )),
                                                ]),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),),
                          ],
                        ),
                        //padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.08, MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.1),
                      ),
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );

  }
}
