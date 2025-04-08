import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class advisorSummaryPage extends StatefulWidget {
  advisorSummaryPage();


  @override
  _AdvisorSummaryPageState createState() => _AdvisorSummaryPageState();
}

class _AdvisorSummaryPageState extends State<advisorSummaryPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  double tokenEntryWidth = 0;
  double tokenEntryHeight = 0;
  String bgMain = 'assets/purplebg.png';
  String infoIcon = 'assets/infoicon.png';
  Color maleColor = wizardGray;
  String roboAdvisorIcon = 'assets/roboadvisor.png';
  Color femaleColor = wizardGreen;
  String camIcon = 'assets/camera.png';
  int _radioValue = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tokenEntryHeight = MediaQuery.of(context).size.height * 0.06;
    tokenEntryWidth = MediaQuery.of(context).size.width * 0.12;
    return Scaffold(
      body: Stack(
       // overflow: Overflow.visible,
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
                          onPressed: () {
                            
                          },
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
                                time: Duration(seconds: 3),beginx:0.03,endx: -0, beginy: 0.2,endy: -0.0,
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
              top: MediaQuery.of(context).size.height * 0.13,
              height: MediaQuery.of(context).size.height * 0.95,
              duration: Duration(milliseconds: 500),
              child: Container(
                  padding: EdgeInsets.fromLTRB(
                      MediaQuery.of(context).size.width * 0.05,0,
                      MediaQuery.of(context).size.width * 0.05,0),
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                          alignment: Alignment.center,
                          child: Text('Hi Femi, our algorithm indicates that you’re a  ',
                              style: dark22Style,
                              textAlign: TextAlign.left)),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                          child: Text('Conservative Investor',
                            style: dark36Style,textAlign: TextAlign.center
                          )),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Image(
                          image: AssetImage(roboAdvisorIcon),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Text('We’ve worked out your risk appetite and setup your portfolio to match it',
                              style: dark16Style,
                              textAlign: TextAlign.left)),
                      Container(
                        //alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(
                              0,MediaQuery.of(context).size.width * 0.07,
                              0,MediaQuery.of(context).size.width * 0.02),
                          child:  Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Card(
                                    elevation: 20,
                                    color: Colors.transparent,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.12,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      alignment: Alignment.center,
                                      child: Text('45%',style: buttonLightStyle,),
                                      decoration: new BoxDecoration(
                                        color: wizardPink,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.70,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Wealth Wizard Money Market Fund',style: dark16Style,textAlign: TextAlign.left,),
                                                  Text('Learn more about Wealth Wizard Money Market Fund',style: dark10Style,textAlign: TextAlign.left,),
                                                ],
                                              ),
                                              Container(
                                                height: MediaQuery.of(context).size.height * 0.06,
                                                alignment: Alignment.center,
                                                child:Image(image: AssetImage(infoIcon),),
                                              )
                                            ],
                                          ),
                                          Container(
                                            //margin: EdgeInsets.fromLTRB(0, 3, MediaQuery.of(context).size.width * 0.1, 0),
                                              height: 2.0,
                                              alignment: Alignment.centerRight,
                                              width: MediaQuery.of(context).size.width *0.8,
                                              color: wizardGray),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Card(
                                    elevation: 20,
                                    color: Colors.transparent,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.12,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      alignment: Alignment.center,
                                      child: Text('25%',style: buttonLightStyle,),
                                      decoration: new BoxDecoration(
                                        color: wizardBlue2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.70,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Wealth Wizard EuroBond',style: dark16Style,textAlign: TextAlign.left,),
                                                  Text('Learn more about Wealth Wizard EuroBond',style: dark10Style,textAlign: TextAlign.left,),
                                                ],
                                              ),
                                              Container(
                                                height: MediaQuery.of(context).size.height * 0.06,
                                                alignment: Alignment.center,
                                                child:Image(image: AssetImage(infoIcon),),
                                              )
                                            ],
                                          ),
                                          Container(
                                            //margin: EdgeInsets.fromLTRB(0, 3, MediaQuery.of(context).size.width * 0.1, 0),
                                              height: 2.0,
                                              alignment: Alignment.centerRight,
                                              width: MediaQuery.of(context).size.width *0.8,
                                              color: wizardGray),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Card(
                                    elevation: 20,
                                    color: Colors.transparent,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.12,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      alignment: Alignment.center,
                                      child: Text('30%',style: buttonDarkStyle,),
                                      decoration: new BoxDecoration(
                                        color: wizardGreen2,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.70,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Wealth Wizard Agribusiness',style: dark16Style,textAlign: TextAlign.left,),
                                                  Text('Learn more about Wealth Wizard Agribusiness',style: dark10Style,textAlign: TextAlign.left,),
                                                ],
                                              ),
                                              Container(
                                                height: MediaQuery.of(context).size.height * 0.06,
                                                alignment: Alignment.center,
                                                child:Image(image: AssetImage(infoIcon),),
                                              )
                                            ],
                                          ),
                                          Container(
                                            //margin: EdgeInsets.fromLTRB(0, 3, MediaQuery.of(context).size.width * 0.1, 0),
                                              height: 2.0,
                                              alignment: Alignment.centerRight,
                                              width: MediaQuery.of(context).size.width *0.8,
                                              color: wizardGray),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Card(
                                    elevation: 20,
                                    color: Colors.transparent,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width * 0.12,
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      alignment: Alignment.center,
                                      child: Text('15%',style: buttonDarkStyle,),
                                      decoration: new BoxDecoration(
                                        color: wizardYellow,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.03,
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width * 0.70,
                                      child: Column(
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text('Wealth Wizard Discovery Fund',style: dark16Style,textAlign: TextAlign.left,),
                                                  Text('Learn more about Wealth Wizard Discovery Fund',style: dark10Style,textAlign: TextAlign.left,),
                                                ],
                                              ),
                                              Container(
                                                height: MediaQuery.of(context).size.height * 0.06,
                                                alignment: Alignment.center,
                                                child:Image(image: AssetImage(infoIcon),),
                                              )
                                            ],
                                          ),
                                          Container(
                                            //margin: EdgeInsets.fromLTRB(0, 3, MediaQuery.of(context).size.width * 0.1, 0),
                                              height: 2.0,
                                              alignment: Alignment.centerRight,
                                              width: MediaQuery.of(context).size.width *0.8,
                                              color: wizardGray),
                                        ],
                                      )
                                  ),
                                ],
                              ),
                            ],
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
                            child: ElevatedButton(
  style: ElevatedButton.styleFrom(
    shape: buttonShape, // Button shape
    backgroundColor: wizardGreen, // Button color
  ),
  onPressed: () {
    // Add your action here
  },
  child: Text(
    'Setup your portfolio',
    style: lightBodyStyle,
  ),
)
),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text('Skip, go to Dashboard',style: footerGreenBiggerStyle,),
                        width: MediaQuery.of(context).size.width,
                        //height: MediaQuery.of(context).size.height * 0.08,
                      ),
                    ],
                  ))),
        ],
      ),
    );
  }
}
