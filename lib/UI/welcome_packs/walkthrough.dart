import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';

class walkthroughPage extends StatefulWidget {
  walkthroughPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _WalkthroughPageState createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<walkthroughPage>
    with TickerProviderStateMixin {
  bool _first = true;
  bool _show = false;
  bool _showNext = true;
  bool _showPrevious = false;
  double xAxis = 0;
  double yAxis = 0;
  double iconYAxis = 0;
  double iconXAxis = 0;
  Timer timer;
  double containerSize = 0;
  double mainContainerPosition = 0.5;
  double mainContainerSize = 0.55;
  double positionSize = 0.5;
  double human1IconPosition = -1;
  double human2IconPosition = -1;
  double human3IconPosition = -1;
  double text1Position = -1;
  double text2Position = -1;
  double text3Position = -1;
  double text3TopPosition = 0.6;
  double humanIconSize = 0.4;
  double bgIconPosition = 0.18;
  double bgIconRightPosition = 0;
  double nairaIconPosition = 0;
  double nairaIconTopPosition = 0.18;
  double nairaIconSize = 0.5;
  String humanIcon1 = 'assets/humanicon.png';
  String humanIcon2 = 'assets/humanicon2.png';
  String humanIcon3 = 'assets/femaleicon.png';
  String nairaIcon = 'assets/nairacharticon.png';
  String bgIcon = 'assets/bgicon.png';
  String bgMain = 'assets/blankwhite.png';
  String centerIcon = 'assets/shield.png';
  String headerText = '';
  String bodyText = '';
  final int _numPages = 4;
  int _currentPage = 0;
  Color _currentColor = paydayOrange;


  void doMotion() {
    timer = Timer(
        Duration(microseconds: 100),
            () => {
          setState(() {
            xAxis = -MediaQuery.of(context).size.width * 0.3;
            yAxis = -MediaQuery.of(context).size.height * 0.05;
            human1IconPosition = 0.25;
            text1Position = 0;
            iconYAxis = 0.1;
            iconXAxis = 0.3;
            containerSize = 0.5;
            positionSize = 0.5;
            bodyText= 'Create an investment plan. Make more profits on your investments over time.';
            headerText='Higher Returns on your Investments';
          })
        });
  }

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
      height: 8.0,
      width: isActive ? 24.0 : 10.0,
      decoration: BoxDecoration(
        color: isActive ? accent : Colors.grey,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  State<StatefulWidget> initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          //header logo
          Positioned(
              top: 0,
              child: Container(
                decoration: BoxDecoration(
                  image:  DecorationImage(
                    image: AssetImage(bgMain),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width,
                child: Hero(
                  tag: "iconTag",
                  child:
                  WidgetAnimator(
                    component: imgAnimation2(
                      url: 'assets/logo.png',
                      time: Duration(seconds: 3),
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.3,
                      transition: PositionedTransition,beginx:0,endx: -0, beginy: 0,endy: 0
                    ),
                    transition: Transform,
                    animPattern: Curves.ease,
                    pixle: Colors.transparent,
                    time: Duration(seconds: 1),
                    animType: "nothing",
                    xAxis: -MediaQuery.of(context).size.width * iconXAxis,
                    yAxis: -MediaQuery.of(context).size.height * iconYAxis,
                  ),
                ),
              )
          ),

          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * bgIconPosition,
              duration: Duration(seconds: 1),
              right: -MediaQuery.of(context).size.width * bgIconRightPosition,
              child: AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: WidgetAnimator(
                  component: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,alignment: Alignment.topCenter,
                    child: imgAnimation2(url: bgIcon,time: Duration(milliseconds: 4000),
                      width: MediaQuery.of(context).size.width * 0.9,beginx:0.1,endx: -0.1, beginy: 0,endy: 0,
                      height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,
                    ),),
                  transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                ),
                secondChild: WidgetAnimator(
                  component: Container(
                    height: MediaQuery.of(context).size.height * 0.4,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child: imgAnimation2(url: bgIcon,time: Duration(milliseconds: 4000),
                      width: MediaQuery.of(context).size.width * 0.9,beginx:0.1,endx: -0.1, beginy: 0,endy: 0,
                      height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,
                    ),),
                  transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                ),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              )
          ),

          //bottom rect
          AnimatedPositioned(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: WidgetAnimator(
                component: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.08, MediaQuery.of(context).size.width * 0.1, MediaQuery.of(context).size.width * 0.1),
                  alignment: Alignment.center,
                  child:Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Text(bodyText,style: lightBodyStyle,textAlign: TextAlign.center,),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                      ),
                      Hero(
                        tag: "btnInvestingTag",transitionOnUserGestures: true,
                        child:
                        ButtonTheme(
                            minWidth: MediaQuery.of(context).size.width,
                            height: 50.0,
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                //side: BorderSide(color: Colors.red)
                              ),
                              child: Text('Start Investing',style: buttonDefaultStyle,),
                              onPressed: () {
                                Navigator.pushNamed(context, '/signup');
                              },
                              color: accent,
                            )),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      if (_show) Hero(
                          tag: "btnLoginTag",transitionOnUserGestures: true,
                          child:
                          ButtonTheme(
                              minWidth: MediaQuery.of(context).size.width ,
                              height: 50.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: accent)
                                ),
                                child: Text('Login',style: buttonLightStyle,),
                                color: Colors.transparent,
                                onPressed: ()=>{
                                  Navigator.pushNamed(context, '/login')
                                },
                                highlightElevation: 0.5,
                              )
                          ),
                        ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            if(!_showPrevious)IconButton(
                              color: Colors.transparent,
                              icon: Icon(Icons.arrow_back_ios,color: Colors.transparent,),
                            ),
                            if(_showPrevious)IconButton(
                                iconSize: 25,
                                color: Colors.white,
                                icon: Icon(Icons.arrow_back_ios),
                                onPressed: () =>
                                {setState(() {
                                  _first = !_first;
                                  _currentPage = --_currentPage % 3;
                                  print(_currentPage);
                                  switch(_currentPage) {
                                    case 0:
                                      _showPrevious = false;
                                      human1IconPosition = 0.25;
                                      text1Position = 0;
                                      text2Position = 1;
                                      human2IconPosition = 1;
                                      bgIcon = 'assets/bgicon.png';
                                      humanIcon1 = 'assets/humanicon.png';
                                      centerIcon = 'assets/shield.png';
                                      _currentColor = paydayOrange;
                                      headerText = 'Higher Returns on your Investments';
                                      bodyText = 'Create an investment plan. Make more profits on your investments over time.';
                                      break;
                                    case 1:
                                      bgIcon = 'assets/bgicon2.png';
                                      humanIcon1 = 'assets/humanicon2.png';
                                      centerIcon = 'assets/rocketcoinicon.png';
                                      _currentColor = paydayBlue;
                                      human2IconPosition = 0.25;
                                      human3IconPosition = 1;
                                      text2Position = 0;
                                      text3Position = 1;
                                      headerText = 'Transparency & Security of your Funds';
                                      bodyText = 'Create an investment plan. Make more profits on your investments over time.';
                                      break;
                                    case 2:
                                      _show = false;
                                      _showNext = true;
                                      mainContainerPosition = 0.5;
                                      mainContainerSize = 0.55;
                                      human3IconPosition = 0.25;
                                      humanIconSize = 0.4;
                                      bgIconPosition = 0.18;
                                      bgIconRightPosition = 0;
                                      nairaIconPosition = 0;
                                      nairaIconTopPosition = 0.18;
                                      nairaIconSize = 0.5;
                                      xAxis = -MediaQuery.of(context).size.width * 0.3;
                                      yAxis = -MediaQuery.of(context).size.height * 0.05;
                                      iconYAxis = 0.1;
                                      iconXAxis = 0.3;
                                      containerSize = 0.5;
                                      positionSize = 0.5;
                                      bgMain = 'assets/blankwhite.png';
                                      bgIcon = 'assets/bgicon2.png';
                                      nairaIcon = 'assets/nairacharticon.png';
                                      centerIcon = 'assets/blankwhite.png';
                                      text3TopPosition = 0.6;
                                      _currentColor = paydayPurple;
                                      headerText = 'Financial Performance & Experience';
                                      bodyText = 'Create an investment plan. Make more profits on your investments over time.';
                                      break;
                                    default:
                                      _currentColor = paydayOrange;
                                  }

                                })},
                                alignment: Alignment.centerRight),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: _buildPageIndicator(),
                            ),
                            if(_showNext)IconButton(
                                iconSize: 25,
                                color: Colors.white,
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () async => {
                                  setState(() {
                                    _first = !_first;
                                    _currentPage = ++_currentPage % 4;
                                    print(_currentPage);
                                    switch(_currentPage) {
                                      case 1:
                                        _show = false;
                                        _showPrevious = true;
                                        xAxis = -MediaQuery.of(context).size.width * 0.3;
                                        yAxis = -MediaQuery.of(context).size.height * 0.05;
                                        iconYAxis = 0.1;
                                        iconXAxis = 0.3;
                                        containerSize = 0.5;
                                        positionSize = 0.5;
                                        human1IconPosition = 1;
                                        human2IconPosition = 0.25;
                                        text1Position = 1;
                                        text2Position = 0;
                                        bgIcon = 'assets/bgicon2.png';
                                        nairaIcon = 'assets/nairacharticon.png';
                                        centerIcon = 'assets/rocketcoinicon.png';
                                        _currentColor = paydayBlue;
                                        headerText = 'Transparency & Security of your Funds';
                                        bodyText = 'Create an investment plan. Make more profits on your investments over time.';
                                        break;
                                      case 2:
                                        _show = false;
                                        xAxis = -MediaQuery.of(context).size.width * 0.3;
                                        yAxis = -MediaQuery.of(context).size.height * 0.05;
                                        iconYAxis = 0.1;
                                        iconXAxis = 0.3;
                                        containerSize = 0.5;
                                        positionSize = 0.5;
                                        human2IconPosition = 1;
                                        human3IconPosition = 0.25;
                                        text2Position = 1;
                                        text3Position = 0;
                                        bgIcon = 'assets/bgicon2.png';
                                        nairaIcon = 'assets/nairacharticon.png';
                                        centerIcon = 'assets/blankwhite.png';
                                        _currentColor = paydayPurple;
                                        headerText = 'Financial Performance & Experience';
                                        bodyText = 'Create an investment plan. Make more profits on your investments over time.';
                                        break;
                                      case 3:
                                        mainContainerSize = 0.85;
                                        mainContainerPosition = 0.2;
                                        _showNext = false;
                                        text3TopPosition = 0.5;
                                        headerText = 'Start earning as high as 10% per annum in 24 hours';
                                        nairaIcon = 'assets/nairacharticonlight.png';
                                        bgMain = 'assets/leafBG.png';
                                        human3IconPosition = 1;
                                        nairaIconPosition = 0.2;
                                        nairaIconTopPosition = 0.14;
                                        nairaIconSize = 0.3;
                                        iconXAxis = 0;
                                        iconYAxis = 0.1;
                                        _currentColor = paydayGreen;
                                        _show = true;
                                        break;
                                      default:
                                        _currentColor = paydayOrange;
                                        human3IconPosition = 1;
                                    }
                                  })
                                },
                                alignment: Alignment.centerRight),
                            if(!_showNext)IconButton(
                              color: Colors.transparent,
                              icon: Icon(Icons.arrow_back_ios,color: Colors.transparent,),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                transition: ScaleTransition,
                animPattern: Curves.easeInOutCirc,
                pixle: _currentColor,
                time: Duration(seconds: 1),
                animType: "nothing",
                xAxis: xAxis,
                yAxis: yAxis,),
            ),
            top: MediaQuery.of(context).size.height * mainContainerPosition,
            height: MediaQuery.of(context).size.height * mainContainerSize,
            duration: Duration(seconds: 0),
          ),

          //Slide 1
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * human1IconPosition,
              duration: Duration(milliseconds: 500),
              child: Column(
                children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height * humanIconSize,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child:
                    imgAnimation2(url: humanIcon1,time: Duration(milliseconds: 2100),width: MediaQuery.of(context).size.width * 0.4,
                      height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,beginx:0.0,endx: 0.0, beginy: -0.0,endy: 0.0
                    ),
                  ),
                ],
              )
          ),

          //Slide 2
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * human2IconPosition,
              duration: Duration(milliseconds: 500),
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * humanIconSize,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child:
                    imgAnimation2(url: humanIcon2,time: Duration(milliseconds: 2100),width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,beginx:0.0,endx: 0.0, beginy: -0.0,endy: 0.0
                    ),
                  ),
                ],
              )
          ),

          //Slide 3
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * human3IconPosition,
              duration: Duration(milliseconds: 500),
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * humanIconSize,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child:
                    imgAnimation2(url: humanIcon3,time: Duration(milliseconds: 2100),width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,beginx:0.0,endx: 0.0, beginy: -0.0,endy: 0.0
                    ),
                  ),
                ],
              )
          ),

          //Text 1
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.6,
              left: MediaQuery.of(context).size.width * text1Position,
              width: MediaQuery.of(context).size.width,
              duration: Duration(milliseconds: 500),
              child: Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text(headerText,style: lightHeaderStyle,textAlign: TextAlign.center,),
              ),
          ),

          //Text 2
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.6,
              left: MediaQuery.of(context).size.width * text2Position,
              width: MediaQuery.of(context).size.width,
              duration: Duration(milliseconds: 500),
              child: Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text(headerText,style: lightHeaderStyle,textAlign: TextAlign.center,),
              ),
          ),

          //Text 3
          AnimatedPositioned(
              top: MediaQuery.of(context).size.height * text3TopPosition,
              left: MediaQuery.of(context).size.width * text3Position,
              width: MediaQuery.of(context).size.width,
              duration: Duration(milliseconds: 500),
              child: Container(
                padding: EdgeInsets.fromLTRB(MediaQuery.of(context).size.width * 0.1, 0, MediaQuery.of(context).size.width * 0.1, 0),
                color: Colors.transparent,
                alignment: Alignment.center,
                child: Text(headerText,style: lightHeaderStyle,textAlign: TextAlign.center,),
              ),
          ),


          //Naira icon
          AnimatedPositioned(
            top: MediaQuery.of(context).size.height * nairaIconTopPosition,
            left: MediaQuery.of(context).size.width * nairaIconPosition,
            duration: Duration(seconds: 1),
            child: WidgetAnimator(
              component: Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width *0.6,
                color: Colors.transparent,
                alignment: Alignment.centerLeft,
                child: imgAnimation2(
                  url: nairaIcon,
                  time: Duration(milliseconds: 3000),beginx:0.00,endx: -0.0, beginy: 0.0,endy: 0,
                  width: MediaQuery.of(context).size.width * nairaIconSize,
                  height: MediaQuery.of(context).size.height * nairaIconSize,
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
              top: MediaQuery.of(context).size.height * 0.2,
              child:AnimatedCrossFade(
                duration: const Duration(seconds: 1),
                firstChild: WidgetAnimator(
                  component: Container(
                    height: MediaQuery.of(context).size.height * 0.4,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child: imgAnimation2(url: centerIcon,time: Duration(seconds: 3),beginx:0.00,endx: -0.0, beginy: 0.0,endy: 0,
    width: MediaQuery.of(context).size.width * 0.4,height: MediaQuery.of(context).size.height * 0.5,transition: PositionedTransition,
                    ),),
                  transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                ),
                secondChild: WidgetAnimator(
                  component: Container(
                    height: MediaQuery.of(context).size.height * 0.4,width: MediaQuery.of(context).size.width,color: Colors.transparent,alignment: Alignment.center,
                    child: imgAnimation2(url: centerIcon,time: Duration(seconds: 3),beginx:0.00,endx: -0.00, beginy: 0.00,endy: 0,
    width: MediaQuery.of(context).size.width * 0.4,height: MediaQuery.of(context).size.height * 0.35,transition: PositionedTransition,
                    ),),
                  transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
                ),
                crossFadeState: _first
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              )
          ),
        ],
      ),
    );
  }
}