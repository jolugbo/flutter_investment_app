import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';

class registerationTokenPage extends StatefulWidget {
  registerationTokenPage();



  @override
  _RegisterationTokenPageState createState() => _RegisterationTokenPageState();
}

class _RegisterationTokenPageState extends State<registerationTokenPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  double tokenEntryWidth = 0;
  double tokenEntryHeight = 0;
  String bgMain1 = 'assets/leafBG.png';


  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    tokenEntryHeight = MediaQuery.of(context).size.height * 0.06;
    tokenEntryWidth = MediaQuery.of(context).size.width * 0.12;
    return Scaffold(
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
                  time: Duration(seconds: 2),beginx:0.10,endx: 0, beginy: 0.1,endy: 0,
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
                child: Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () {
                        
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,size: 30,
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
              )),
          AnimatedPositioned(
            child: Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.of(context).size.width * 0.05,0,
                    MediaQuery.of(context).size.width * 0.05,0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        'Phone Verification',
                        style: darkHeaderStyle,
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Text('Your wealth wizard account is being created.',
                        style: dark15Style,
                        textAlign: TextAlign.left,),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.008,
                      ),
                      RichText(
                        textAlign: TextAlign.left,
                        text: TextSpan(
                          text: 'Enter the verification code we just sent to your number',
                          style: dark15Style,
                          children: <TextSpan>[
                            TextSpan(
                              text: ' 08012345678',
                              style: footerGreenStyle,
                            ),
                          ],
                        ),
                      ),
                    ])
            ),
            top: MediaQuery.of(context).size.height * 0.1,
            height: MediaQuery.of(context).size.height * 0.2,
            duration: Duration(seconds: 1),
          ),
          AnimatedPositioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: WidgetAnimator(
                component: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                    padding: EdgeInsets.fromLTRB(
                        MediaQuery.of(context).size.width * 0.02,
                        MediaQuery.of(context).size.width * 0.08,
                        MediaQuery.of(context).size.width * 0.02,
                        MediaQuery.of(context).size.width * 0.1),
                    alignment: Alignment.center,
                    child: Column(children: <Widget>[
                      Container(
                        //height: MediaQuery.of(context).size.height * 0.5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: Text('OTP will expire in \n4:59s', style: lightBodyStyle,textAlign: TextAlign.center,),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(30, 30)),
                                  child: Container(
                                      alignment: Alignment.center,
                                      decoration: tokenBox,
                                      height: tokenEntryHeight,
                                      width: tokenEntryWidth,
                                      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
                                      child: Text(
                                        '',
                                        style: securityStyle2,
                                        textAlign: TextAlign.center,
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            MediaQuery.of(context).size.height * 0.05,
                            MediaQuery.of(context).size.height * 0.05,
                            MediaQuery.of(context).size.height * 0.05,
                            0),
                        height: MediaQuery.of(context).size.height * 0.45,
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '1',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '2',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '3',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),

                                  ]),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '4',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '5',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '6',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                  ]),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '7',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '8',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '9',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),

                                  ]),
                              Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceAround,
                                  children: <Widget>[

                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Icon(Icons.backspace,color: accent,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                      onPressed: () {},
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( '0',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),
                                    RawMaterialButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, '/personalinfo1');
                                        },
                                      elevation: 2.0,
                                      fillColor: wizardGreen,
                                      child: Text( 'OK',style: securityStyle,),//,backgroundColor: Colors.green,
                                      padding: EdgeInsets.all(15.0),
                                      shape: CircleBorder(side: BorderSide(color: accent)),
                                    ),

                                  ]),
                              Container(
                                height: MediaQuery.of(context).size.height * 0.05,
                                alignment: Alignment.center,
                                child: Text('Request new OTP', style: lightBodyStyle,textAlign: TextAlign.center,),
                              ),
                            ]),
                      )
                    ])),
                transition: ScaleTransition,
                animPattern: Curves.easeInOutCirc,
                pixle: wizardGreen,
                time: Duration(seconds: 1),
                animType: "nothing",
                xAxis: 0,
                yAxis: 0,
              ),
            ),
            top: MediaQuery.of(context).size.height * 0.3,
            height: MediaQuery.of(context).size.height * 0.8,
            duration: Duration(seconds: 1),
          ),
        ],
      ),
    );
  }
}
