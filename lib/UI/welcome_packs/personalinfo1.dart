import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class personalinfo1Page extends StatefulWidget {
  personalinfo1Page({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _Personalinfo1PageState createState() => _Personalinfo1PageState();
}

class _Personalinfo1PageState extends State<personalinfo1Page>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  double tokenEntryWidth = 0;
  double tokenEntryHeight = 0;
  String bgMain = 'assets/purplebg.png';


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
                            Icons.arrow_back_ios,size: 30,
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
                      Text('Confirm your details',
                        style: dark18Style,
                        textAlign: TextAlign.left,),
                      Text(
                        'Personal Information',
                        style: purple28Style,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                        width:MediaQuery.of(context).size.width,
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 0.3,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: paydayOrange,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        child:Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'First Name',style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: paydayGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: paydayGreen),),
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        child:Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Last Name',style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: paydayGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: paydayGreen),),
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      Container(
                        child:Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Phone Number',style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: paydayGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: paydayGreen),),
                              ),),
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
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
                                Navigator.pushNamed(
                                    context, '/personalinfo2');
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
