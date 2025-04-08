import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as DatePicker;
//import 'package:flutter_sliding_up_panel/sliding_up_panel_widget.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class setupInvestmentPage extends StatefulWidget {
  setupInvestmentPage();

  @override
  _SetupInvestmentPageState createState() => _SetupInvestmentPageState();
}

class _SetupInvestmentPageState extends State<setupInvestmentPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  String bgMain = 'assets/purplebg.png';
  String goalicon = 'assets/smallgoalicon.png';
  String groupGoalIcon = 'assets/groupgoalicon.png';
  String nextIcon = 'assets/nexticon.png';
  String headerText = 'Validate your identity';
  String middleHeaderText = 'Valid Identification';
  String bodyText =
      'A copy of a valid government issued ID clearly displaying the name on your wealth wizard account.';
  String startinvestingIcon = 'assets/startinvesting.png';
  String targetIcon = 'assets/target.png';
  String vacationIcon = 'assets/vacationicon.png';
  String arrowIcon = 'assets/arrow.png';
  String infoIcon = 'assets/infoicon.png';
  String kycdocumentationIcon = 'assets/kycdocumentation.png';
  String portfolioIcon = 'assets/portfolio.png';
  String supportIcon = 'assets/support.png';
  String fileuploadicon = 'assets/fileuploadicon.png';
  String bgMain2 = 'assets/loginbg2.png';
  int _currentPage = 0;
  bool showFirst = true;
  bool showSkip = false;
  double maximumHeight = 0;
  double initialHeight = 0;
  double goalNameSetupTop = 0;
  double goalAmountSetupTop = 0;
  double groupGoalInviteSetupTop = 0;
  PanelController panelController = PanelController();
  String _date = 'yyyy/mm/dd';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => normalScreenParamSet());
  }

  void normalScreenParamSet() {
    goalNameSetupTop = 0;
    goalAmountSetupTop = MediaQuery.of(context).size.height * 1.2;
    groupGoalInviteSetupTop = MediaQuery.of(context).size.height * 1.2;
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry radius = BorderRadius.only(
      topLeft: Radius.circular(24.0),
      topRight: Radius.circular(24.0),
    );
    return Material(
      child: SlidingUpPanel(
        parallaxEnabled: true,
        parallaxOffset: .5,
        backdropEnabled: true,
        controller: panelController,
        minHeight: initialHeight,
        maxHeight: maximumHeight,
        panel: Stack(
          children: <Widget>[
            AnimatedPositioned(
              duration: Duration(seconds: 1),
              child: WidgetAnimator(
                component: Container(
                  height: MediaQuery.of(context).size.height * 0.8,
                  width: MediaQuery.of(context).size.width,
                  child: imgAnimation2(
                    url: bgMain2,
                    time: Duration(seconds: 4),
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
            AnimatedPositioned(
              top: goalNameSetupTop,
              right: 0,
              left: 0,
              duration: Duration(seconds: 2),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    WidgetAnimator(
                      component: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: Colors.transparent,
                        alignment: Alignment.center,
                        child: imgAnimation2(
                          url: goalicon,
                          time: Duration(seconds: 15),
                          width: MediaQuery.of(context).size.width * 0.1,
                          beginx: 0.03,
                          endx: -0,
                          beginy: 0,
                          endy: -0.0,
                          height: MediaQuery.of(context).size.height * 0.05,
                          transition: RotationTransition,
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
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Goal based investment',
                            style: dark24Style,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Image(
                            image: AssetImage(infoIcon),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width,
                          color: wizardGray),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        'What is your financial goal targeted towards?',
                        style: purple18Style,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.27,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'vacation',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'vacation',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Home Purchase',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Home',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Rent',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Rent',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                ]),
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Education',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Education',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Business capital',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Business',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Event',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Event',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                ]),
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Retirement Planning',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Retirement',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Emergency Fund',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Emergency',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                ]),
                            Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Car',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Car',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Expensive purchase',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Expensive',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                  FloatingActionButton.extended(
                                    label: Text(
                                      'Others',
                                      style: dark14Style,
                                    ),
                                    heroTag: 'Others',
                                    backgroundColor: accent,
                                    onPressed: () {},
                                  ),
                                ]),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What is the Goal title?',
                              style: purple22Style,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              color: wizardLightGray2,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: TextField(
                                  //decoration: InputDecoration(border: InputBorder(borderSide: BorderSide(color: wizardGreen))),
                                  ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: goalAmountSetupTop,
              right: 0,
              left: 0,
              duration: Duration(seconds: 1),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.1,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: imgAnimation2(
                        url: vacationIcon,
                        time: Duration(seconds: 2),
                        width: MediaQuery.of(context).size.width * 0.1,
                        beginx: 0.04,
                        endx: -0,
                        beginy: 0,
                        endy: -0.0,
                        height: MediaQuery.of(context).size.height * 0.05,
                        transition: PositionedTransition,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        'Vacation to Abu Dhabi',
                        style: dark22Style,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width,
                          color: wizardGray),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'What is the Target Amount?',
                              style: purple18Style,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              color: wizardLightGray2,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: TextField(
                                  //decoration: InputDecoration(border: InputBorder(borderSide: BorderSide(color: wizardGreen))),
                                  ),
                            ),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'When do you intend to achieve this goal?',
                              style: purple18Style,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0)),
                                    elevation: 4.0,
                                    backgroundColor: accent),
                                onPressed: () async {
                                  DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime(2000, 1, 1),
                                    lastDate: DateTime(2022, 12, 31),
                                  );

                                  if (pickedDate != null) {
                                    print('confirm $pickedDate');
                                    setState(() {
                                      _date =
                                          '${pickedDate.year} - ${pickedDate.month} - ${pickedDate.day}';
                                    });
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50.0,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.date_range,
                                                  size: 18.0,
                                                  color: wizardPurple,
                                                ),
                                                Text(
                                                  " $_date",
                                                  style: purpleThickStyle,
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Text("  Change", style: purpleThickStyle),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Are you funding this goal with people?',
                              style: purple18Style,
                              textAlign: TextAlign.center,
                            ),
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      color: accent,
                                      child: ButtonTheme(
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          height: 50.0,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              shape: buttonShape,
                                              backgroundColor: wizardGreen,
                                              side: BorderSide(
                                                color: wizardGreen,
                                                style: BorderStyle.solid,
                                                width: 0.8,
                                              ),
                                              elevation: 0.8,
                                            ),
                                            child: Text(
                                              'No, it’s just me',
                                              style: green14Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            onPressed: () => {
                                              Navigator.pushNamed(
                                                  context, '/kycUpload')
                                            }, //callback when button is clicked
                                          )),
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      height: 50,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      color: accent,
                                      child: ButtonTheme(
                                          minWidth: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.35,
                                          height: 50.0,
                                          child: OutlinedButton(
                                            child: Text(
                                              'Yes, I’m setting up a Group Goal',
                                              style: gray14Style,
                                            ),
                                            onPressed: () => {
                                              Navigator.pushNamed(
                                                  context, '/kycUpload')
                                            },
                                            style: OutlinedButton.styleFrom(
                                              shape: buttonShape,
                                              backgroundColor: accent,
                                              side: BorderSide(
                                                color: wizardGray,
                                                style: BorderStyle.solid,
                                                width: 0.8,
                                              ),
                                              elevation: 0.8,
                                            ),
                                          )),
                                      width: MediaQuery.of(context).size.width *
                                          0.35,
                                      height: 50,
                                    ),
                                  ],
                                )),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedPositioned(
              top: groupGoalInviteSetupTop,
              right: 0,
              left: 0,
              duration: Duration(seconds: 1),
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height * 0.15,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: Colors.transparent,
                      alignment: Alignment.center,
                      child: imgAnimation2(
                        url: groupGoalIcon,
                        time: Duration(seconds: 2),
                        width: MediaQuery.of(context).size.width * 0.2,
                        beginx: 0.04,
                        endx: -0,
                        beginy: 0,
                        endy: -0.0,
                        height: MediaQuery.of(context).size.height * 0.1,
                        transition: PositionedTransition,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Group Goal',
                            style: purple22Style,
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.02,
                          ),
                          Image(
                            image: AssetImage(infoIcon),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                          height: 1.0,
                          width: MediaQuery.of(context).size.width,
                          color: wizardGray),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(18, 0, 18, 0),
                              child: Text(
                                'Enter the email address of the people you’d like to invite to join in investing towards this goal.',
                                style: purple18Style,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                            ),
                            Container(
                              color: wizardLightGray2,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'mail@example.com',
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ]),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                      //height: MediaQuery.of(context).size.height * 0.27,
                      child: Chip(
                        avatar: CircleAvatar(
                          backgroundColor: wizardGreen,
                          child: Icon(Icons.add),
                        ),
                        label: Text('Add more people'),
                        backgroundColor: accent,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                  ],
                ),
              ),
            ),
            if (showSkip)
              AnimatedPositioned(
                top: MediaQuery.of(context).size.height * 0.64,
                width: MediaQuery.of(context).size.width,
                duration: Duration(seconds: 1),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  child: Text(
                    'skip, continue later',
                    style: footerGreenBiggerStyle,
                  ),
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            AnimatedPositioned(
              top: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              duration: Duration(seconds: 1),
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: ButtonTheme(
                    minWidth: MediaQuery.of(context).size.width * 0.85,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: wizardGreen,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 50,
                          ),
                          Text(
                            'Proceed',
                            style: lightBodyStyle,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            height: 50,
                          ),
                          Image(
                            width: 50,
                            height: 50,
                            image: AssetImage(nextIcon),
                          )
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          _currentPage = ++_currentPage % 3;
                          switch (_currentPage) {
                            case 0:
                              goalNameSetupTop = 0;
                              goalAmountSetupTop =
                                  -MediaQuery.of(context).size.height * 1.2;
                              groupGoalInviteSetupTop =
                                  -MediaQuery.of(context).size.height * 1.2;
                              break;
                            case 1:
                              goalNameSetupTop =
                                  MediaQuery.of(context).size.height * 1.2;
                              goalAmountSetupTop = 0;
                              groupGoalInviteSetupTop =
                                  -MediaQuery.of(context).size.height * 1.2;
                              break;
                            case 2:
                              showSkip = true;
                              goalNameSetupTop =
                                  MediaQuery.of(context).size.height * 1.2;
                              ;
                              goalAmountSetupTop =
                                  MediaQuery.of(context).size.height * 1.2;
                              groupGoalInviteSetupTop = 0;
                              break;
                          }
                        });
                      },
                    )),
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
          ],
        ),
        body: Scaffold(
          body: Stack(
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
                                    time: Duration(seconds: 3), beginx: 0.03,
                                    endx: -0, beginy: 0.2, endy: -0.0,
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    //height: MediaQuery.of(context).size.height * 0.3,
                                    transition: PositionedTransition,
                                  ),
                                  transition: Transform,
                                  animPattern: Curves.easeInOutCirc,
                                  pixle: Colors.transparent,
                                  time: Duration(seconds: 1),
                                  animType: "nothing",
                                  xAxis: -MediaQuery.of(context).size.width * 0,
                                  yAxis:
                                      -MediaQuery.of(context).size.height * 0,
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
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * 0.05),
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Start investing',
                              style: purple28Style,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Text(
                              'Is your investment targeted towards a financial goal?',
                              style: purple22Style,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.02,
                          ),
                          Container(
                            child: Stack(
                              children: <Widget>[
                                imgAnimation2(
                                  url: targetIcon,
                                  time: Duration(seconds: 2),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  beginx: 0.03,
                                  endx: -0,
                                  beginy: 0,
                                  endy: -0.0,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  transition: PositionedTransition,
                                ),
                                imgAnimation2(
                                  url: arrowIcon,
                                  time: Duration(seconds: 2),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  beginx: 0.05,
                                  endx: 0.15,
                                  beginy: -0.15,
                                  endy: -0.3,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  transition: PositionedTransition,
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.25,
                            //color: Colors.red,
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: accent,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      color: accent,
                                      child: ButtonTheme(
                                          minWidth:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          buttonColor: accent,
                                          child: OutlinedButton(
                                            child: Text(
                                              'Yes, I want to setup a goal',
                                              style: dark16Style,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                panelController.show();
                                                maximumHeight =
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.8;
                                                initialHeight =
                                                    MediaQuery.of(context)
                                                            .size
                                                            .height *
                                                        0.8;
                                              })
                                            },
                                            style: OutlinedButton.styleFrom(
                                              shape: buttonShape,
                                              backgroundColor: accent,
                                              side: BorderSide(
                                                color: accent,
                                                style: BorderStyle.solid,
                                                width: 0.8,
                                              ),
                                              elevation: 0.8,
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.08,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: accent,
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.7,
                                      alignment: Alignment.center,
                                      color: accent,
                                      child: ButtonTheme(
                                          minWidth:
                                              MediaQuery.of(context).size.width,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                          buttonColor: accent,
                                          child: OutlinedButton(
                                            child: Text(
                                              'Yes, I want to setup a goal',
                                              style: dark16Style,
                                            ),
                                            onPressed: () => {
                                              Navigator.pushNamed(
                                                  context, '/kycUpload')
                                            },
                                            style: OutlinedButton.styleFrom(
                                              shape: buttonShape,
                                              backgroundColor: accent,
                                              side: BorderSide(
                                                color: accent,
                                                style: BorderStyle.solid,
                                                width: 0.8,
                                              ),
                                              elevation: 0.8,
                                            ),
                                          )),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.01,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.04,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: ButtonTheme(
                                minWidth: MediaQuery.of(context).size.width,
                                height: 50.0,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: wizardGreen,
                                  ),
                                  child: Text(
                                    'Proceed',
                                    style: lightBodyStyle,
                                  ),
                                  onPressed: () {
                                    setState(() {});
                                  },
                                )),
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.1,
                          ),
                        ],
                      ))),
            ],
          ),
        ),
        borderRadius: radius,
      ),
    );
  }
}
