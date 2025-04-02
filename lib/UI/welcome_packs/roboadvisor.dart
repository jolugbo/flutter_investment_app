import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class roboAdvisorPage extends StatefulWidget {
  roboAdvisorPage();


  @override
  _RoboAdvisorPageState createState() => _RoboAdvisorPageState();
}

class _RoboAdvisorPageState extends State<roboAdvisorPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  String bgMain = 'assets/leafBG2.png';
  String nextIcon = 'assets/nexticon.png';
  String roboAdvisorIcon = 'assets/roboadvisor.png';
  int _radioValue =0;
  double q1position = 0;
  double q2position = 0;
  double q3position = 0;
  double q4position = 0;
  double q5position = 0;
  double percent = 20.0;
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
  }
@override
  void didChangeDependencies() {
    var size = MediaQuery.of(context).size;
  q2position = size.height * 0.85;
  q3position = size.height * 0.85;
  q4position = size.height * 0.85;
  q5position = size.height * 0.85;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        //overflow: Overflow.visible,
        children: <Widget>[
          AnimatedPositioned(
            top: size.height * 0.2,
            left: -size.width * 0.09,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                height: size.height,
                width: size.width,
                child: imgAnimation2(
                  url: bgMain,
                  time: Duration(seconds: 2),beginx:0.03,endx: -0, beginy: -0.02,endy: 0.0,
                  width: size.width,
                  height: size.height,
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
                          onPressed: () {
                            
                          },
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 30,
                            color: paydayDark,
                          ),
                        ),
                        Container(
                          width: size.width * 0.8,
                          child: Hero(
                            tag: "iconTag",
                            child: WidgetAnimator(
                              component: imgAnimation2(
                                url: leafIcon,
                                time: Duration(seconds: 3),beginx:0,endx: -0, beginy: 0,endy: -0.0,
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

          AnimatedPositioned(
              left: q1position,
              height: size.height * 0.95,
              top: size.height * 0.13,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.05,0,
                      size.width * 0.05,0),
                  alignment: Alignment.topLeft,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                              'What is your average monthly income before tax?',
                              style: dark24Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        height: size.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Less than ₦500,000',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Between ₦500,000 and ₦1million',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),

                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Between ₦1million and ₦5million ',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Above ₦5million ',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))),

          AnimatedPositioned(
              left: q2position,
              height: size.height * 0.95,
              top: size.height * 0.13,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.05,0,
                      size.width * 0.05,0),
                  alignment: Alignment.topLeft,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                              'What is the source of your income?',
                              style: dark24Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        height: size.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('I’m a salary earner',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('I’m self employed',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),

                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Salary earner + Side hustle',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
          ),

          AnimatedPositioned(
              left: q3position,
              height: size.height * 0.95,
              top: size.height * 0.13,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.05,
                      0,
                      size.width * 0.05,
                      0),
                  alignment: Alignment.topLeft,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                              'What is your primary investment objective?',
                              style: dark24Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        height: size.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Preserve my capital and offset the effects of inflation',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Grow my investment significantly within a short period of time',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),

                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Grow my portfolio steadily over a sustained period of time',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
          ),

          AnimatedPositioned(
              left: q4position,
              height: size.height * 0.95,
              top: size.height * 0.13,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.05,0,
                      size.width * 0.05,0),
                  alignment: Alignment.topLeft,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                              'When do you plan to begin liquidating your investments?',
                              style: dark24Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        height: size.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Less than 1 year',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Within 1 to 3 years',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),

                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Within 3  - 10 years',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),

                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Over 10 years',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ))
          ),

          AnimatedPositioned(
              left: q5position,
              height: size.height * 0.95,
              top: size.height * 0.13,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      size.width * 0.05,0,
                      size.width * 0.05,0),
                  alignment: Alignment.topLeft,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text(
                              'Will your investment choices be restricted by islamic financial ethical values?',
                              style: dark24Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                      ),
                      Container(
                        //alignment: Alignment.centerRight,
                        height: size.height * 0.4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('Yes, halal investments only',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                Radio(
                                  value: 0,
                                  activeColor: paydayDeepGreen,
                                  groupValue: _radioValue,
                                  onChanged: (val) {
                                    setState(() {
                                    });
                                  },
                                ),
                                Card(
                                  elevation: 20,
                                  color: Colors.transparent,
                                  child:
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.height * 0.07,
                                    alignment: Alignment.centerLeft,
                                    child: Text('No, i’m open to all',style: dark16Style,),
                                    decoration: new BoxDecoration(
                                      color: accent,
                                      border: Border.all(
                                          color: Colors.transparent,
                                          width: 5.0,
                                          style: BorderStyle.solid),
                                      borderRadius: new BorderRadius.only(
                                        topLeft: new Radius.circular(20.0),
                                        //topRight: new Radius.circular(20.0),
                                        bottomRight: new Radius.circular(20.0),
                                        //bottomLeft: new Radius.circular(20.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ))
          ),

          AnimatedPositioned(
              top: size.height * 0.80,
              duration: Duration(seconds: 1),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                  size.width * 0.1,0,
                  size.width * 0.1,0),
                  alignment: Alignment.center,
                  height: size.height * 0.13,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Question ${_currentPage+1} / 5',style: dark16Style,textAlign: TextAlign.right,),
                              LinearPercentIndicator(
                                width: size.width * 0.6,
                                animation: true,
                                lineHeight: 10.0,
                                animationDuration: 2500,
                                percent: percent/100,
                                linearStrokeCap: LinearStrokeCap.roundAll,
                                progressColor: paydayOrange,
                              ),
                            ],
                          ),
                          ButtonTheme(
                              minWidth: 30,
                              height: 40.0,
                              child:ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: buttonShape, // Button shape
    backgroundColor: paydayGreen, // Button color
  ),
                                child: Image(image: AssetImage(nextIcon)),
                                onPressed: () {
                                  setState(() {
                                    _currentPage = ++_currentPage % 6;
                                    print('here 1');
                                    print(_currentPage);
                                    switch(_currentPage) {
                                      case 0:
                                         q1position = 0;
                                         q5position = -size.height * 0.85;
                                        break;
                                      case 1:
                                        q2position = 0;
                                        q1position = -size.height * 0.85;
                                        percent = 40.0;
                                        break;
                                      case 2:
                                        q2position = -size.height * 0.85;
                                        q3position = 0;
                                        percent = 60.0;
                                        break;
                                      case 3:
                                        q3position = -size.height * 0.85;
                                        q4position = 0;
                                        percent = 80.0;
                                        break;
                                      case 4:
                                        q4position = -size.height * 0.85;
                                        q5position = 0;
                                        percent = 100.0;
                                        break;
                                      case 5:
                                        Navigator.pushNamed(context, '/advisorSummary');
                                        q1position = 0;
                                        q5position = -size.height * 0.85;
                                        _currentPage = 0;
                                        percent = 20.0;
                                        break;
                                      default:
                                        q1position = 0;
                                        q2position = -size.height * 0.85;
                                    }
                                  });
                                },
                              )),
                        ],
                      ),
                      Container(
                        child: Text('Skip, go to Dashboard',style: footerGreenBiggerStyle,),
                      )
                    ],)
                  ))
        ],
      ),
    );
  }
}
