import 'dart:math';
import 'package:expandable/expandable.dart';
import 'package:fl_animated_linechart/chart/area_line_chart.dart';
import 'package:fl_animated_linechart/common/pair.dart';
import 'package:fl_animated_linechart/fl_animated_linechart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/linechart.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class setUpInvestmentPage extends StatefulWidget {
  setUpInvestmentPage();

  @override
  _SetUpInvestmentPageState createState() => _SetUpInvestmentPageState();
}

class _SetUpInvestmentPageState extends State<setUpInvestmentPage>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  String bgMain = 'assets/purplebg.png';
  String goalicon = 'assets/smallgoalicon.png';
  String groupGoalIcon = 'assets/groupgoalicon.png';
  String nextIcon = 'assets/nexticon.png';
  String chartArrowIcon = 'assets/chartarrow.png';
  String manualIcon = 'assets/manualicon.png';
  String manualicon2 = 'assets/manualicon2.png';
  String calendarIcon = 'assets/calendaricon.png';
  String targetIcon = 'assets/target.png';
  String vacationIcon = 'assets/vacationicon.png';
  String arrowIcon = 'assets/arrow.png';
  String infoIcon = 'assets/infoicon.png';
  String nairaCheckIcon = 'assets/nairacheck.png';
  String nairauncheckIcon = 'assets/nairauncheck.png';
  String dollarUnCheckIcon = 'assets/dollaruncheck.png';
  String dollarCheckIcon = 'assets/dollarcheck.png';
  String fixedIncomeIcon = 'assets/fixedincomeicon.png';
  String mmfChartIcon = 'assets/mmfchart.png';
  String dollarchartIcon = 'assets/dollarchart.png';
  String ethicalFundIcon = 'assets/ethicalfundicon.png';
  String discoveryFundIcon = 'assets/discoveryfundicon.png';
  String debitCardIcon = 'assets/debitcardicon.png';
  String bgMain2 = 'assets/loginbg2.png';
  String transferIcon = 'assets/transfericon1.png';
  String bankIcon = 'assets/bank.png';
  String paystackIcon = 'assets/paystack.png';
  String flutterwaveIcon = 'assets/flutterwave.png';
  String check2 = 'assets/check2.png';
  String check = 'assets/check.png';
  String darkbarIcon = 'assets/darkbar.png';
  String copyIcon = 'assets/copyicon.png';
  int _currentPage = 0;
  bool setUpGoal = false;
  bool setUpInvest = true;
  bool showFirst = true;
  Color setUpGoalColor = accent;
  Color setUpInvestColor = accent;
  Color setUpNairaColor = accent;
  Color setUpDollarColor = accent;
  Color goalBtnColor = wizardGreen;
  Color groupGoalBtnColor = wizardGray;
  TextStyle goalStyle = green14Style;
  TextStyle groupGoalStyle = gray14Style;
  bool showSkip = false;
  bool showmanualFundingBtn = false;
  bool weeklyChecked = true;
  bool showInvestmenttypes = true;
  bool showCurrencyOptions = false;
  bool showNairaCheck = false;
  bool showNairaInv = true;
  bool showDollarCheck = false;
  bool showNairaInvestmentOptions = false;
  bool showMMFCheck = false;
  bool showFixedIncomeCheck = false;
  bool showDiscoveryFundCheck = false;
  bool showEthicalFundCheck = false;
  bool showFrequencyOptions = false;
  bool showRecurrentOptions = false;
  bool showManualOptions = false;
  bool showCardForms = false;
  double goalNameSetupTop = 1.2;
  double goalAmountSetupTop = 1.2;
  double groupGoalInviteSetupTop = 1.2;
  double setupTypeAndCurrencyType = 0.1;
  double dollarAndNairaInvTypes = 1.2;
  double mmfTop = 1.2;
  double euroBondTop = 1.2;
  double fixedIncomeTop = 1.2;
  double discoveryFundTop = 1.2;
  double ethicalFundTop = 1.2;
  double recurrerntFrequencyTop = 1.2;
  double recurrerntAmountTop = 1.2;
  double recurrerntTimeTop = 1.2;
  double recurrerntPaymentOptionTop = 1.2;
  double manualTop = 1.2;
  double manualFundingTop = 1.2;
  double frequencyOptionTop = 1.2;
  PanelController panelController = PanelController();
  ExpandableController cardController = ExpandableController();
  ExpandableController transferController = ExpandableController();
  ExpandableController bankController = ExpandableController();
  String _date = 'yyyy/mm/dd';
  Random random = new Random();
  // Widget Main1;
  // Widget Main2;
  int chartIndex = 0;

  List<double> _generateRandomData(int count) {
    List<double> result = <double>[];
    for (int i = 0; i < count; i++) {
      result.add(random.nextDouble() * 100);
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    Widget investmentType1 = AnimatedPositioned(
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
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Start investing',
                    style: purple28Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: size.height * 0.02,
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
                  height: size.height * 0.02,
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      imgAnimation2(
                        url: goalicon,
                        time: Duration(seconds: 5),
                        width: size.width * 0.8,
                        beginx: 0.0,
                        endx: -0,
                        beginy: 0,
                        endy: -0.0,
                        height: size.height * 0.1,
                        transition: PositionedTransition,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.04,
                ),
                Container(
                  height: size.height * 0.25,
                  //color: Colors.red,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AnimatedCrossFade(
                            duration: const Duration(milliseconds: 200),
                            firstChild: Container(
                                child: Image(
                              image: AssetImage(check2),
                              width: size.width * 0.2,
                            )),
                            secondChild: Container(
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: accent,
                              ),
                            ),
                            crossFadeState: setUpGoal
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          ),
                          Container(
                            width: size.width * 0.7,
                            alignment: Alignment.center,
                            color: Colors.transparent,
                            child: ButtonTheme(
                                minWidth: size.width,
                                height: size.height * 0.1,
                                buttonColor: accent,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: setUpGoalColor),
                                    ),
                                    backgroundColor: accent, // Replaces `color`
                                    elevation:
                                        0.8, // Replaces `highlightElevation`
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setUpInvest = true;
                                      setUpInvestColor = accent;
                                      setUpGoal = true;
                                      setUpGoalColor = wizardGreen;
                                    });
                                  },
                                  child: Text(
                                    'Yes, I want to setup a goal',
                                    style: dark16Style,
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AnimatedCrossFade(
                            duration: const Duration(milliseconds: 200),
                            firstChild: Container(
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: accent,
                              ),
                            ),
                            secondChild: Container(
                                child: Image(
                              image: AssetImage(check2),
                              width: size.width * 0.2,
                            )),
                            crossFadeState: setUpInvest
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          ),
                          Container(
                            width: size.width * 0.7,
                            alignment: Alignment.center,
                            color: accent,
                            child: ButtonTheme(
                                minWidth: size.width,
                                height: size.height * 0.1,
                                buttonColor: accent,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: BorderSide(color: setUpInvestColor),
                                    ),
                                    backgroundColor: accent, // Replaces `color`
                                    elevation:
                                        0.8, // Replaces `highlightElevation`
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      setUpGoal = false;
                                      setUpGoalColor = accent;
                                      setUpInvest = false;
                                      setUpInvestColor = wizardGreen;
                                    });
                                  },
                                  child: Text(
                                    'No, I just want to invest',
                                    style: dark16Style,
                                  ),
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                ),
                Container(
                  height: size.height * 0.2,
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: ButtonTheme(
                        //minWidth: size.width * 0.85,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: buttonShape,
                            backgroundColor: wizardGreen, // Replaces `color`
                            elevation: 0.8, // Replaces `highlightElevation`
                          ),
                          onPressed: () {
                            setState(() {
                              if (setUpGoal) {
                                goalNameSetupTop = 0;
                              } else if (!setUpInvest) {
                                showInvestmenttypes = false;
                                showCurrencyOptions = true;
                              }
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                width: size.width * 0.25,
                                height: 50,
                              ),
                              Text(
                                'Proceed',
                                style: lightBodyStyle,
                              ),
                              Container(
                                width: size.width * 0.25,
                                height: 50,
                              ),
                              Image(
                                width: 50,
                                height: 50,
                                image: AssetImage(nextIcon),
                              )
                            ],
                          ),
                        )),
                    height: size.height * 0.1,
                  ),
                ),
              ],
            )));

    Widget nairaOptions = AnimatedPositioned(
        top: size.height * 0.1,
        duration: Duration(seconds: 1),
        child: Container(
            padding: EdgeInsets.all(size.width * 0.05),
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'What investment vehicle are you looking to invest in?',
                    style: purple22Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  //height: size.height * 0.7,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showMMFCheck
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.22,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showMMFCheck
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Wealth Wizard Money Market Fund',
                                                style: gray16Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image: AssetImage(mmfChartIcon),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                              ),
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showMMFCheck = !showMMFCheck;
                                          showEthicalFundCheck = false;
                                          showDiscoveryFundCheck = false;
                                          showFixedIncomeCheck = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showFixedIncomeCheck
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.22,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showFixedIncomeCheck
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Wealth Wizard Fixed Income Fund',
                                                style: gray16Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image:
                                                    AssetImage(fixedIncomeIcon),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                              ),
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showFixedIncomeCheck =
                                              !showFixedIncomeCheck;
                                          showMMFCheck = false;
                                          showEthicalFundCheck = false;
                                          showDiscoveryFundCheck = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showDiscoveryFundCheck
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                //alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.22,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showDiscoveryFundCheck
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Wealth Wizard Discovery Fund',
                                                style: gray16Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image: AssetImage(
                                                    discoveryFundIcon),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                              ),
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showDiscoveryFundCheck =
                                              !showDiscoveryFundCheck;
                                          showMMFCheck = false;
                                          showEthicalFundCheck = false;
                                          showFixedIncomeCheck = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showEthicalFundCheck
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.22,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showEthicalFundCheck
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Wealth Wizard Ethical Fund',
                                                style: gray16Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image:
                                                    AssetImage(ethicalFundIcon),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                              ),
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showEthicalFundCheck =
                                              !showEthicalFundCheck;
                                          showMMFCheck = false;
                                          showDiscoveryFundCheck = false;
                                          showFixedIncomeCheck = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.2,
                  alignment: Alignment.center,
                  child: ButtonTheme(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: buttonShape,
                          elevation: 0.8,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.25,
                              height: 50,
                            ),
                            Text(
                              'Proceed2',
                              style: lightBodyStyle,
                            ),
                            Container(
                              width: size.width * 0.25,
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
                            if (showMMFCheck) {
                              mmfTop = 0;
                            }
                            if (showFixedIncomeCheck) {
                              fixedIncomeTop = 0;
                            }
                            if (showDiscoveryFundCheck) {
                              discoveryFundTop = 0;
                            }
                            if (showEthicalFundCheck) {}
                          });
                        },
                      )),
                ),
              ],
            )));

    Widget dollarOptions = AnimatedPositioned(
        top: size.height * 0.1,
        duration: Duration(seconds: 1),
        child: Container(
            padding: EdgeInsets.all(size.width * 0.05),
            //alignment: Alignment.topLeft,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'What investment vehicle are you looking to invest in?',
                    style: purple22Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showMMFCheck
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.22,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showMMFCheck
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Wealth Wizard EuroBond Fund',
                                                style: gray16Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.03,
                                            ),
                                            Container(
                                              alignment: Alignment.center,
                                              child: Image(
                                                image:
                                                    AssetImage(dollarchartIcon),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.15,
                                              ),
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showMMFCheck = !showMMFCheck;
                                          showEthicalFundCheck = false;
                                          showDiscoveryFundCheck = false;
                                          showFixedIncomeCheck = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.4,
                  alignment: Alignment.bottomCenter,
                  child: ButtonTheme(
                      height: 50.0,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: buttonShape,
                          elevation: 0.8, // Replaced highlightElevation
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: size.width * 0.25,
                              height: 50,
                            ),
                            Text(
                              'Proceed',
                              style: lightBodyStyle,
                            ),
                            Container(
                              width: size.width * 0.25,
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
                            euroBondTop = 0;
                          });
                        },
                      )),
                ),
              ],
            )));

    Widget currencySetUp = AnimatedPositioned(
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
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Select Currency',
                    style: purple28Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: size.height * 0.02,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'What currency do you intend to make your investments in?',
                    style: purple22Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.35,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AnimatedCrossFade(
                            duration: const Duration(milliseconds: 200),
                            firstChild: Container(
                                child: Image(
                              image: AssetImage(check2),
                              width: size.width * 0.2,
                            )),
                            secondChild: Container(
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: accent,
                              ),
                            ),
                            crossFadeState: showNairaCheck
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          ),
                          Container(
                            width: size.width * 0.33,
                            alignment: Alignment.center,
                            child: ButtonTheme(
                                minWidth: size.width * 0.3,
                                height: size.height * 0.25,
                                buttonColor: accent,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(
                                          color:
                                              setUpNairaColor), // Moved inside shape
                                    ),
                                    elevation: 0.8,
                                  ),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Naira Denominated',
                                          style: gray16Style,
                                          textAlign: TextAlign.center,
                                        ),
                                        AnimatedCrossFade(
                                          duration: const Duration(seconds: 1),
                                          firstChild: WidgetAnimator(
                                            component: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.17,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: Colors.transparent,
                                              alignment: Alignment.center,
                                              child: imgAnimation2(
                                                url: nairaCheckIcon,
                                                time: Duration(seconds: 2),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                beginx: 0.03,
                                                endx: -0,
                                                beginy: 0,
                                                endy: -0.0,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                transition:
                                                    PositionedTransition,
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
                                          secondChild: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.17,
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            color: Colors.transparent,
                                            alignment: Alignment.center,
                                            child: imgAnimation2(
                                              url: nairauncheckIcon,
                                              time: Duration(seconds: 2),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.9,
                                              beginx: 0.03,
                                              endx: -0,
                                              beginy: 0,
                                              endy: -0.0,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.1,
                                              transition: PositionedTransition,
                                            ),
                                          ),
                                          crossFadeState: showNairaCheck
                                              ? CrossFadeState.showFirst
                                              : CrossFadeState.showSecond,
                                        ),
                                      ]),
                                  onPressed: () => {
                                    setState(() {
                                      showNairaCheck = true;
                                      setUpNairaColor = wizardGreen;
                                      showDollarCheck = false;
                                      //setUpGoalColor = wizardGreen;
                                      setUpDollarColor = accent;
                                    })
                                  },
                                )),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          AnimatedCrossFade(
                            duration: const Duration(milliseconds: 200),
                            firstChild: Container(
                                child: Image(
                              image: AssetImage(check2),
                              width: size.width * 0.2,
                            )),
                            secondChild: Container(
                              width: size.width * 0.08,
                              height: size.height * 0.08,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: accent,
                              ),
                            ),
                            crossFadeState: showDollarCheck
                                ? CrossFadeState.showFirst
                                : CrossFadeState.showSecond,
                          ),
                          Container(
                            width: size.width * 0.33,
                            alignment: Alignment.center,
                            child: ButtonTheme(
                                minWidth: size.width * 0.3,
                                height: size.height * 0.25,
                                buttonColor: accent,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(
                                          color:
                                              setUpDollarColor), // Moved inside shape
                                    ),
                                    elevation: 0.8,
                                  ),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          'Dollar Denominated',
                                          style: gray16Style,
                                          textAlign: TextAlign.center,
                                        ),
                                        AnimatedCrossFade(
                                          duration: const Duration(seconds: 1),
                                          firstChild: WidgetAnimator(
                                            component: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.17,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: Colors.transparent,
                                              alignment: Alignment.center,
                                              child: imgAnimation2(
                                                url: dollarCheckIcon,
                                                time: Duration(seconds: 2),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                beginx: 0.03,
                                                endx: -0,
                                                beginy: 0,
                                                endy: -0.0,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                transition:
                                                    PositionedTransition,
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
                                          secondChild: WidgetAnimator(
                                            component: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.17,
                                              width: MediaQuery.of(context)
                                                  .size
                                                  .width,
                                              color: Colors.transparent,
                                              alignment: Alignment.center,
                                              child: imgAnimation2(
                                                url: dollarUnCheckIcon,
                                                time: Duration(seconds: 2),
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.9,
                                                beginx: 0.03,
                                                endx: -0,
                                                beginy: 0,
                                                endy: -0.0,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                transition:
                                                    PositionedTransition,
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
                                          crossFadeState: showDollarCheck
                                              ? CrossFadeState.showFirst
                                              : CrossFadeState.showSecond,
                                        ),
                                      ]),
                                  onPressed: () => {
                                    setState(() {
                                      showNairaCheck = false;
                                      setUpNairaColor = accent;
                                      showDollarCheck = true;
                                      setUpDollarColor = wizardGreen;
                                    })
                                  },
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                ),
                Container(
                  height: size.height * 0.2,
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: ButtonTheme(
                        //minWidth: size.width * 0.85,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: buttonShape,
                            elevation: 0.8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                width: size.width * 0.25,
                                height: 50,
                              ),
                              Text(
                                'Proceed',
                                style: lightBodyStyle,
                              ),
                              Container(
                                width: size.width * 0.25,
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
                              setupTypeAndCurrencyType = 1.2;
                              dollarAndNairaInvTypes = 0.1;
                              if (showNairaCheck) {
                                showNairaInv = true;
                              }
                              if (showDollarCheck) {
                                showNairaInv = false;
                              }
                            });
                          },
                        )),
                    height: size.height * 0.1,
                  ),
                ),
              ],
            )));

    Widget frequencyOption = AnimatedPositioned(
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
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'How do you intend to fund this  investment?',
                    style: purple22Style,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: size.height * 0.02,
                ),
                Container(
                  height: size.height * 0.6,
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showRecurrentOptions
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.25,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showRecurrentOptions
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Recurrent Funding',
                                              style: gray16Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            AnimatedCrossFade(
                                              duration:
                                                  const Duration(seconds: 1),
                                              firstChild: WidgetAnimator(
                                                component: Container(
                                                  height: size.height * 0.17,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: Colors.transparent,
                                                  alignment: Alignment.center,
                                                  child: imgAnimation2(
                                                    url: calendarIcon,
                                                    time: Duration(seconds: 2),
                                                    width: size.width * 0.9,
                                                    beginx: 0.03,
                                                    endx: -0,
                                                    beginy: 0,
                                                    endy: -0.0,
                                                    height: size.height * 0.1,
                                                    transition:
                                                        PositionedTransition,
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
                                              secondChild: Container(
                                                height: size.height * 0.17,
                                                width: size.width,
                                                color: Colors.transparent,
                                                alignment: Alignment.center,
                                                child: imgAnimation2(
                                                  url: calendarIcon,
                                                  time: Duration(seconds: 2),
                                                  width: size.width * 0.9,
                                                  beginx: 0.03,
                                                  endx: -0,
                                                  beginy: 0,
                                                  endy: -0.0,
                                                  height: size.height * 0.1,
                                                  transition:
                                                      PositionedTransition,
                                                ),
                                              ),
                                              crossFadeState:
                                                  showRecurrentOptions
                                                      ? CrossFadeState.showFirst
                                                      : CrossFadeState
                                                          .showSecond,
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showRecurrentOptions =
                                              !showRecurrentOptions;
                                          showManualOptions = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              AnimatedCrossFade(
                                duration: const Duration(milliseconds: 200),
                                firstChild: Container(
                                    child: Image(
                                  image: AssetImage(check2),
                                  width: size.width * 0.2,
                                )),
                                secondChild: Container(
                                  width: size.width * 0.08,
                                  height: size.height * 0.08,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: accent,
                                  ),
                                ),
                                crossFadeState: showManualOptions
                                    ? CrossFadeState.showFirst
                                    : CrossFadeState.showSecond,
                              ),
                              Container(
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: ButtonTheme(
                                    minWidth: size.width * 0.3,
                                    height: size.height * 0.25,
                                    buttonColor: accent,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          side: BorderSide(
                                              color: showManualOptions
                                                  ? wizardGreen
                                                  : accent), // Moved inside shape
                                        ),
                                        elevation: 0.8,
                                      ),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Text(
                                              'Manual Funding',
                                              style: gray16Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            AnimatedCrossFade(
                                              duration:
                                                  const Duration(seconds: 1),
                                              firstChild: WidgetAnimator(
                                                component: Container(
                                                  height: size.height * 0.17,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: Colors.transparent,
                                                  alignment: Alignment.center,
                                                  child: imgAnimation2(
                                                    url: manualIcon,
                                                    time: Duration(seconds: 2),
                                                    width: size.width * 0.9,
                                                    beginx: 0.03,
                                                    endx: -0,
                                                    beginy: 0,
                                                    endy: -0.0,
                                                    height: size.height * 0.1,
                                                    transition:
                                                        PositionedTransition,
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
                                              secondChild: WidgetAnimator(
                                                component: Container(
                                                  height: size.height * 0.17,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  color: Colors.transparent,
                                                  alignment: Alignment.center,
                                                  child: imgAnimation2(
                                                    url: manualIcon,
                                                    time: Duration(seconds: 2),
                                                    width: size.width * 0.9,
                                                    beginx: 0.03,
                                                    endx: -0,
                                                    beginy: 0,
                                                    endy: -0.0,
                                                    height: size.height * 0.1,
                                                    transition:
                                                        PositionedTransition,
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
                                              crossFadeState: showManualOptions
                                                  ? CrossFadeState.showFirst
                                                  : CrossFadeState.showSecond,
                                            ),
                                          ]),
                                      onPressed: () => {
                                        setState(() {
                                          showManualOptions =
                                              !showManualOptions;
                                          showRecurrentOptions = false;
                                        })
                                      },
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height * 0.2,
                  child: Container(
                    width: size.width,
                    alignment: Alignment.center,
                    child: ButtonTheme(
                        //minWidth: size.width * 0.85,
                        height: 50.0,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: buttonShape,
                            elevation: 0.8,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Container(
                                width: size.width * 0.25,
                                height: 50,
                              ),
                              Text(
                                'Proceed',
                                style: lightBodyStyle,
                              ),
                              Container(
                                width: size.width * 0.25,
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
                              if (showRecurrentOptions) {
                                recurrerntFrequencyTop = 0;
                              } else if (showManualOptions) {
                                manualTop = 0;
                              }
                            });
                          },
                        )),
                    height: size.height * 0.1,
                  ),
                ),
//                Container(
//                  width: size.width,
//                  color: Colors.red,
//                  alignment: Alignment.center,
//                  child: ButtonTheme(
//                      minWidth: size.width * 0.85,
//                      height: 50.0,
//                      child: ElevatedButton(
//                        child: Row(
//                          mainAxisSize: MainAxisSize.min,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          children: <Widget>[
//                            Container( width: size.width *0.3,height: 50,),
//                            Text('Proceed',style: lightBodyStyle,),
//                            Container( width: size.width *0.3,height: 50,),
//                            Image(width: 50, height: 50, image: AssetImage(nextIcon),)
//                          ],
//                        ),
//                        onPressed: () {
//                          setState(() {
//                            if(showMMFCheck){
//                              initialHeight = size.height * 0.5;
//                              maximumHeight =size.height * 0.5;
//                              goalNameSetupTop = -size.height * 1.2;
//                              mmfTop = 0;
//                              panelController.open();
//                              panelController.show();
//                            }
//                            if(showFixedIncomeCheck){
//                              initialHeight = size.height * 0.4;
//                              maximumHeight =size.height * 0.4;
//                              goalNameSetupTop = -size.height * 1.2;
//                              fixedIncomeTop = 0;
//                              panelController.open();
//                              panelController.show();
//                            }
//                            if(showDiscoveryFundCheck){
//                              initialHeight = size.height * 0.8;
//                              maximumHeight =size.height * 0.8;
//                              discoveryFundTop = 0;
//                              panelController.open();
//                              panelController.show();
//
//                            }
//                            if(showEthicalFundCheck){
//
//                            }
//                          });
//                        },
//                        color: wizardGreen,
//                      )),
//                  height: size.height * 0.1,
//                ),
              ],
            )));

    // Map<DateTime, double> line1 = createLine2();
    // Map<DateTime, double> line2 = createLine2_2();

    // LineChart chart = AreaLineChart.fromDateTimeMaps(
    //     [line1], [Colors.red.shade900], ['C'],
    //     gradients: [Pair(Colors.yellow.shade400, Colors.red.shade700)]);

    // BorderRadiusGeometry radius = BorderRadius.only(
    //   topLeft: Radius.circular(24.0),
    //   topRight: Radius.circular(24.0),
    // );

    return Scaffold(
      body: Stack(
        //overflow: Overflow.visible,
        children: <Widget>[
          //bg
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

          //header
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
                                time: Duration(seconds: 3),
                                beginx: 0,
                                endx: -0,
                                beginy: 0,
                                endy: -0.0,
                                width: size.width * 0.3,
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

          //setupGoalTypeAndCurrencyType
          AnimatedPositioned(
            top: size.height * setupTypeAndCurrencyType,
            duration: const Duration(milliseconds: 200),
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              firstChild: investmentType1,
              secondChild: currencySetUp,
              crossFadeState: showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),

          //frequencyOptionTop
          AnimatedPositioned(
            top: size.height * frequencyOptionTop,
            duration: const Duration(milliseconds: 200),
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              firstChild: frequencyOption,
              secondChild: frequencyOption,
              crossFadeState: showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),

          //dollarAndNairaInvTypes
          AnimatedPositioned(
            top: size.height * dollarAndNairaInvTypes,
            duration: const Duration(milliseconds: 200),
            child: AnimatedCrossFade(
              duration: const Duration(milliseconds: 200),
              firstChild: nairaOptions,
              secondChild: dollarOptions,
              crossFadeState: showNairaInv
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),

          //goalNameSetupTop
          AnimatedPositioned(
            top: size.height * goalNameSetupTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.2,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.8,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
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
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors.transparent,
                                                style: BorderStyle.solid,
                                              ),
                                              elevation: 0.8,
                                            ),
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                goalNameSetupTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Image(
                                      image: AssetImage(goalicon),
                                      height: size.height * 0.08,
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Goal based investment',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                            color: wizardGreen,
                                          ),
                                          Image(
                                              image: AssetImage(infoIcon),
                                              width: 25),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
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
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      width: size.width,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            SizedBox(
                                              height: 30.0,
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                          onPressed: () {
                                                            setState(() {});
                                                          },
                                                          child: Text(
                                                            'vacation',
                                                            style: dark14Style,
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                          child: Text(
                                                            'Home Purchase',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Rent',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 30.0,
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Education',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Business capital',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Event',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 30.0,
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Retirement Planning',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Emergency Fund',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                  ]),
                                            ),
                                            SizedBox(
                                              height: 30.0,
                                              child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  children: <Widget>[
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Car',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Expensive purchase',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                    ButtonTheme(
                                                        height: 20.0,
                                                        child: OutlinedButton(
                                                          child: Text(
                                                            'Others',
                                                            style: dark14Style,
                                                          ),
                                                          onPressed: () =>
                                                              {setState(() {})},
                                                          style: OutlinedButton
                                                              .styleFrom(
                                                            side: BorderSide(
                                                              color:
                                                                  wizardGreen, // Border color
                                                              style: BorderStyle
                                                                  .solid,
                                                            ),
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0), // Rounded corners
                                                            ),
                                                            elevation:
                                                                0.8, // Removed highlightElevation (not used in OutlinedButton)
                                                          ),
                                                        )),
                                                  ]),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                    ),
                                    Container(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'What is the Goal title?',
                                              style: purple18Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            Container(
                                              color: wizardLightGray2,
                                              padding: EdgeInsets.all(5),
                                              margin: EdgeInsets.all(5),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.75,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              child: TextField(
                                                  decoration:
                                                      textFieldDecoration),
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                            ),
                                            ButtonTheme(
                                                minWidth: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                height: 50.0,
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          shape: buttonShape,
                                                          elevation: 0.8,
                                                          backgroundColor:
                                                              wizardGreen),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    children: <Widget>[
                                                      Container(
                                                        width:
                                                            size.width * 0.25,
                                                        height: 50,
                                                      ),
                                                      Text(
                                                        'Proceed',
                                                        style: lightBodyStyle,
                                                      ),
                                                      Container(
                                                        width:
                                                            size.width * 0.25,
                                                        height: 50,
                                                      ),
                                                      Image(
                                                        width: 40,
                                                        height: 40,
                                                        image: AssetImage(
                                                            nextIcon),
                                                      )
                                                    ],
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      goalNameSetupTop = 1.2;
                                                      goalAmountSetupTop = 0;
                                                    });
                                                  },
                                                )),
                                          ]),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //goalAmountSetupTop
          AnimatedPositioned(
            top: size.height * goalAmountSetupTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.2,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.8,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
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
                            AnimatedPositioned(
                              top: size.height * goalAmountSetupTop,
                              right: 0,
                              left: 0,
                              duration: Duration(milliseconds: 600),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                goalAmountSetupTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                        height: size.height * 0.15,
                                        width: size.width * 0.5,
                                        color: Colors.transparent,
                                        alignment: Alignment.center,
                                        child: Image(
                                          image: AssetImage(vacationIcon),
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.1,
                                        )),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Text(
                                        'Vacation to Abu Dhabi',
                                        style: dark22Style,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                    ),
                                    Container(
                                      //height: size.height * 0.27,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.75,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              child: TextField(
                                                  decoration: InputDecoration(
                                                enabledBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: wizardGreen),
                                                ),
                                                focusedBorder:
                                                    UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: wizardGreen),
                                                ),
                                                border: UnderlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: wizardGreen),
                                                ),
                                              )),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                    ),
                                    Container(
                                      //height: size.height * 0.27,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'When do you intend to achieve this goal?',
                                              style: purple18Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.8,
                                              child: ElevatedButton(
                                                style: OutlinedButton.styleFrom(
                                                  side: BorderSide(
                                                    color: Colors
                                                        .transparent, // Border color
                                                    style: BorderStyle.solid,
                                                  ),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0)),
                                                  elevation:
                                                      0.4, // Removed highlightElevation (not used in OutlinedButton)
                                                ),
                                                onPressed: () async {
                                                  DateTime? pickedDate =
                                                      await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate:
                                                        DateTime(2000, 1, 1),
                                                    lastDate:
                                                        DateTime(2022, 12, 31),
                                                  );

                                                  if (pickedDate != null) {
                                                    print(
                                                        'confirm $pickedDate');
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
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Row(
                                                        children: <Widget>[
                                                          Container(
                                                            child: Row(
                                                              children: <Widget>[
                                                                Icon(
                                                                  Icons
                                                                      .date_range,
                                                                  size: 18.0,
                                                                  color:
                                                                      wizardPurple,
                                                                ),
                                                                Text(
                                                                  " $_date",
                                                                  style:
                                                                      purpleThickStyle,
                                                                ),
                                                              ],
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                      Text("",
                                                          style:
                                                              purpleThickStyle),
                                                    ],
                                                  ),
                                                ),
                                                //color: Colors.white,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      height: size.height * 0.05,
                                    ),
                                    Container(
                                      //height: size.height * 0.27,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Are you funding this goal with people?',
                                              style: purple18Style,
                                              textAlign: TextAlign.center,
                                            ),
                                            Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.1,
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.8,
                                                alignment: Alignment.center,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: <Widget>[
                                                    Container(
                                                      alignment: Alignment
                                                          .center, //color: accent,
                                                      child: ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                          height: 40.0,
                                                          child: OutlinedButton(
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              shape:
                                                                  buttonShape,
                                                              backgroundColor:
                                                                  accent,
                                                              side: BorderSide(
                                                                color:
                                                                    goalBtnColor,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                            child: Text(
                                                              'No, it’s just me',
                                                              style: goalStyle,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                            onPressed: () => {
                                                              setState(() {
                                                                goalStyle =
                                                                    green14Style;
                                                                goalBtnColor =
                                                                    wizardGreen;
                                                                groupGoalStyle =
                                                                    gray14Style;
                                                                groupGoalBtnColor =
                                                                    wizardGray;
                                                              })
                                                            },
                                                          )),
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                      height: 50,
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.center,
                                                      color: accent,
                                                      child: ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                          height: 40.0,
                                                          buttonColor: accent,
                                                          child: OutlinedButton(
                                                            style:
                                                                OutlinedButton
                                                                    .styleFrom(
                                                              shape:
                                                                  buttonShape,
                                                              backgroundColor:
                                                                  accent,
                                                              side: BorderSide(
                                                                color:
                                                                    goalBtnColor,
                                                                style:
                                                                    BorderStyle
                                                                        .solid,
                                                                width: 0.8,
                                                              ),
                                                              elevation: 0.8,
                                                            ),
                                                            child: Text(
                                                              'Yes, I’m setting up a Group Goal',
                                                              style:
                                                                  groupGoalStyle,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                            ),
                                                            onPressed: () => {
                                                              setState(() {
                                                                groupGoalStyle =
                                                                    green14Style;
                                                                groupGoalBtnColor =
                                                                    wizardGreen;
                                                                goalStyle =
                                                                    gray14Style;
                                                                goalBtnColor =
                                                                    wizardGray;
                                                              })
                                                            }, //callback when button is clicked
                                                          )),
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.4,
                                                      height: 40,
                                                    ),
                                                  ],
                                                )),
                                          ]),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor: wizardGreen,
                                            elevation:
                                                0.8, // Replaced highlightElevation
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Proceed',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              )
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              goalAmountSetupTop = 1.2;
                                              groupGoalInviteSetupTop = 0;
                                            });
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //groupGoalInviteSetupTop
          AnimatedPositioned(
            top: size.height * groupGoalInviteSetupTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.2,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.8,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
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
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                groupGoalInviteSetupTop = 1.2;
                                              })
                                            },
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.15,
                                      width: size.width * 0.5,
                                      color: Colors.transparent,
                                      alignment: Alignment.center,
                                      child: imgAnimation2(
                                        url: groupGoalIcon,
                                        time: Duration(seconds: 2),
                                        width: size.width * 0.2,
                                        beginx: 0.04,
                                        endx: -0,
                                        beginy: 0,
                                        endy: -0.0,
                                        height: size.height * 0.1,
                                        transition: PositionedTransition,
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Group Goal',
                                            style: purple22Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                    ),
                                    Container(
                                      //height: size.height * 0.27,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  18, 0, 18, 0),
                                              child: Text(
                                                'Enter the email address of the people you’d like to invite to join in investing towards this goal.',
                                                style: purple18Style,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.04,
                                            ),
                                            Container(
                                              color: wizardLightGray2,
                                              alignment: Alignment.bottomCenter,
                                              padding: EdgeInsets.all(5),
                                              margin: EdgeInsets.all(5),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.75,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.05,
                                              child: TextField(
                                                decoration: textFieldDecoration,
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ]),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      child: Chip(
                                        elevation: 24,
                                        avatar: CircleAvatar(
                                          backgroundColor: wizardGreen,
                                          child: Icon(
                                            Icons.add,
                                          ),
                                        ),
                                        shape: RoundedRectangleBorder(
                                          side: BorderSide(color: wizardGreen),
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                        ),
                                        label: Text('Add more people'),
                                        backgroundColor: accent,
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                    ),
                                    Container(
                                      width: size.width,
                                      alignment: Alignment.center,
                                      child: Text(
                                        'skip, continue later',
                                        style: footerGreenBiggerStyle,
                                      ),
                                      height: size.height * 0.05,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor: wizardGreen,
                                            elevation: 0.8,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Proceed',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              )
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              groupGoalInviteSetupTop = 1.2;
                                              showFirst = !showFirst;
                                            });
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        //padding: EdgeInsets.fromLTRB(size.width * 0.1, size.width * 0.08, size.width * 0.1, size.width * 0.1),
                      ),
                    ),
                  ],
                )),
          ),

          //fixedIncomeTop
          AnimatedPositioned(
            top: size.height * fixedIncomeTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.5,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.5,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
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
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                fixedIncomeTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.fromLTRB(25, 20, 25, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(fixedIncomeIcon),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Text(
                                              'The Wealth Wizard Fixed Income Fund is an open-ended, low risk mutual fund which invests in high quality fixed income securities such as Treasury Bills, Bank Placements, Commercial Paper, etc.',
                                              style: dark14Style,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 0.5,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(25, 20, 25, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Your capital is guaranteed',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Suitable for medium - long term investments',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Competitive returns. ',
                                                style: dark14Style,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.85,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: wizardGreen),
                                          child: Text(
                                            'Invest now',
                                            style: lightBodyStyle,
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              fixedIncomeTop = 1.2;
                                              frequencyOptionTop = 0.1;
                                              dollarAndNairaInvTypes = 1.2;
                                            });
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //mmftop
          AnimatedPositioned(
            top: size.height * mmfTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.4,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.6,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height * 0.8,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
                                    width: size.width,
                                    height: size.height * 0.8,
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
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                mmfTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.all(15),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Image(
                                              image: AssetImage(mmfChartIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.15),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.75,
                                            child: Text(
                                              'The Wealth Wizard Money Market Fund is suitable for Investors who have cash in their bank accounts and wish to earn higher rates than the traditional savings or current account and offset the effects of inflation.',
                                              style: dark14Style,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 50,
                                                height: 50,
                                                image: AssetImage(check2),
                                              ),
                                              Text(
                                                'Your capital is guaranteed',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 50,
                                                height: 50,
                                                image: AssetImage(check2),
                                              ),
                                              Text(
                                                'Interests are paid daily',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 50,
                                                height: 50,
                                                image: AssetImage(check2),
                                              ),
                                              Container(
                                                  width: size.width - 50,
                                                  child: Text(
                                                    'Dividends can be cashed out or reinvested quarterly',
                                                    style: dark14Style,
                                                    textAlign: TextAlign.left,
                                                  )),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image(
                                            width: 50,
                                            height: 50,
                                            image: AssetImage(chartArrowIcon),
                                          ),
                                          Text(
                                            'Yield at 12/06/2020: 5.1234% p/a',
                                            style: purple16Style,
                                          )
                                        ],
                                      ),
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            elevation: 0.8,
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Invest now',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              )
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              mmfTop = 1.2;
                                              frequencyOptionTop = 0.1;
                                              dollarAndNairaInvTypes = 1.2;
                                            });
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //recurrerntFrequencyTop
          AnimatedPositioned(
            top: size.height * recurrerntFrequencyTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height * 0.8,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
                                    width: size.width,
                                    height: size.height * 0.8,
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
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                recurrerntFrequencyTop = 1.2;
                                                recurrerntAmountTop = 0;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    imgAnimation2(
                                      url: calendarIcon,
                                      time: Duration(seconds: 5),
                                      width: size.width * 0.3,
                                      beginx: 0.03,
                                      endx: -0,
                                      beginy: 0,
                                      endy: -0.0,
                                      height: size.height * 0.07,
                                      transition: PositionedTransition,
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Recurrernt funding',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'How often do you want to fund your investment?',
                                                style: purple22Style,
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    alignment: Alignment.center,
                                                    color: accent,
                                                    child: ButtonTheme(
                                                        minWidth:
                                                            size.width * 0.4,
                                                        height: 50.0,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape: buttonShape,
                                                            backgroundColor:
                                                                weeklyChecked
                                                                    ? wizardGreen
                                                                    : accent,
                                                            elevation: 0.8,
                                                          ),
                                                          child: Text(
                                                            'Weekly',
                                                            style: weeklyChecked
                                                                ? white14Style
                                                                : green14Style,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          onPressed: () => {
                                                            setState(() {
                                                              weeklyChecked =
                                                                  !weeklyChecked;
                                                            }),
                                                          },
                                                        )),
                                                    width: size.width * 0.4,
                                                    height: 50,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    child: ButtonTheme(
                                                        minWidth:
                                                            size.width * 0.4,
                                                        height: 50.0,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            shape: buttonShape,
                                                            elevation: 0.8,
                                                            backgroundColor:
                                                                weeklyChecked
                                                                    ? accent
                                                                    : wizardGreen,
                                                          ),
                                                          child: Text(
                                                            'Monthly',
                                                            style: weeklyChecked
                                                                ? green14Style
                                                                : white14Style,
                                                            textAlign: TextAlign
                                                                .center,
                                                          ),
                                                          onPressed: () => {
                                                            setState(() {
                                                              weeklyChecked =
                                                                  !weeklyChecked;
                                                            }),
                                                          },
                                                        )),
                                                    width: size.width * 0.4,
                                                    height: 50,
                                                  ),
                                                ],
                                              )),
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
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Container(
                                                    width: size.width * 0.55,
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          'Proceed to debit amount',
                                                          style: dark14Style,
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                        Container(
                                                          //height: size.height * 0.06,
                                                          child:
                                                              LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.55,
                                                            animation: true,
                                                            lineHeight: 10.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.8,
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                wizardOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: ButtonTheme(
                                                        minWidth:
                                                            size.width * 0.06,
                                                        height: 50.0,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                wizardGreen,
                                                          ),
                                                          child: Image(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.05,
                                                            height: 40,
                                                            image: AssetImage(
                                                                nextIcon),
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              recurrerntAmountTop =
                                                                  0;
                                                              recurrerntFrequencyTop =
                                                                  1.2;
                                                            });
                                                          },
                                                        )),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'You can suspend the direct debit on your investment whenever you wish to',
                                          style: orange14Style,
                                          textAlign: TextAlign.center,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //recurrerntAmountTop
          AnimatedPositioned(
            top: size.height * recurrerntAmountTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height * 0.8,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
                                    width: size.width,
                                    height: size.height * 0.8,
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
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                recurrerntAmountTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    imgAnimation2(
                                      url: calendarIcon,
                                      time: Duration(seconds: 5),
                                      width: size.width * 0.3,
                                      beginx: 0.03,
                                      endx: -0,
                                      beginy: 0,
                                      endy: -0.0,
                                      height: size.height * 0.07,
                                      transition: PositionedTransition,
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Recurrernt funding',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'How much do you want to be debited monthly?',
                                                style: purple22Style,
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              alignment: Alignment.center,
                                              color: wizardLightPurple,
                                              child: TextField()),
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
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Container(
                                                    width: size.width * 0.55,
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          'Proceed to debit amount',
                                                          style: dark14Style,
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                        Container(
                                                          //height: size.height * 0.06,
                                                          child:
                                                              LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.55,
                                                            animation: true,
                                                            lineHeight: 10.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.8,
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                wizardOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: ButtonTheme(
                                                        minWidth:
                                                            size.width * 0.06,
                                                        height: 50.0,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                wizardGreen,
                                                          ),
                                                          child: Image(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.05,
                                                            height: 40,
                                                            image: AssetImage(
                                                                nextIcon),
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              recurrerntTimeTop =
                                                                  0;
                                                              recurrerntAmountTop =
                                                                  1.2;
                                                            });
                                                          },
                                                        )),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'You can suspend the direct debit on your investment whenever you wish to',
                                          style: orange14Style,
                                          textAlign: TextAlign.center,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //recurrerntTimeTop
          AnimatedPositioned(
            top: size.height * recurrerntTimeTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height * 0.8,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
                                    width: size.width,
                                    height: size.height * 0.8,
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
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                recurrerntTimeTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    imgAnimation2(
                                      url: calendarIcon,
                                      time: Duration(seconds: 5),
                                      width: size.width * 0.3,
                                      beginx: 0.03,
                                      endx: -0,
                                      beginy: 0,
                                      endy: -0.0,
                                      height: size.height * 0.07,
                                      transition: PositionedTransition,
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Recurrernt funding',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(10.0),
                                              child: Text(
                                                'When do you want to start investing?',
                                                style: purple22Style,
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.05,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.8,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: accent,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0)),
                                                  elevation: 4.0),
                                              onPressed: () async {
                                                DateTime? pickedDate =
                                                    await showDatePicker(
                                                  context: context,
                                                  initialDate: DateTime.now(),
                                                  firstDate:
                                                      DateTime(2000, 1, 1),
                                                  lastDate:
                                                      DateTime(2022, 12, 31),
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: <Widget>[
                                                    Row(
                                                      children: <Widget>[
                                                        Container(
                                                          child: Row(
                                                            children: <Widget>[
                                                              Icon(
                                                                Icons
                                                                    .date_range,
                                                                size: 18.0,
                                                                color:
                                                                    wizardPurple,
                                                              ),
                                                              Text(
                                                                " $_date",
                                                                style:
                                                                    purpleThickStyle,
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
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
                                              alignment: Alignment.center,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: <Widget>[
                                                  Container(
                                                    width: size.width * 0.55,
                                                    alignment: Alignment.center,
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                          'Proceed to debit amount',
                                                          style: dark14Style,
                                                          textAlign:
                                                              TextAlign.left,
                                                        ),
                                                        Container(
                                                          //height: size.height * 0.06,
                                                          child:
                                                              LinearPercentIndicator(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.55,
                                                            animation: true,
                                                            lineHeight: 10.0,
                                                            animationDuration:
                                                                2500,
                                                            percent: 0.8,
                                                            linearStrokeCap:
                                                                LinearStrokeCap
                                                                    .roundAll,
                                                            progressColor:
                                                                wizardOrange,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    child: ButtonTheme(
                                                        minWidth:
                                                            size.width * 0.06,
                                                        height: 50.0,
                                                        child: ElevatedButton(
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            backgroundColor:
                                                                wizardGreen,
                                                          ),
                                                          child: Image(
                                                            width: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.05,
                                                            height: 40,
                                                            image: AssetImage(
                                                                nextIcon),
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              recurrerntTimeTop =
                                                                  1.2;
                                                              recurrerntPaymentOptionTop =
                                                                  0;
                                                            });
                                                          },
                                                        )),
                                                  )
                                                ],
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'You can suspend the direct debit on your investment whenever you wish to',
                                          style: orange14Style,
                                          textAlign: TextAlign.center,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //recurrerntPaymentOptionTop
          AnimatedPositioned(
            top: size.height * recurrerntPaymentOptionTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
//                                AnimatedPositioned(
//                                  top: size.height * 0.01,
//                                  bottom: size.height * 0.03,
//                                  duration: Duration(seconds: 1),
//                                  child: WidgetAnimator(
//                                    component: Container(
//                                      height: size.height * 0.8,
//                                      width: size.width,
//                                      child: imgAnimation2(
//                                        url: bgMain2,
//                                        time: Duration(seconds: 4),beginx:0.3,endx: 0.2, beginy: -0.04,endy: 0,
//                                        width: size.width,
//                                        height: size.height * 0.8,
//                                        transition: PositionedTransition,
//                                      ),
//                                    ),
//                                    transition: Transform,
//                                    animPattern: Curves.easeIn,
//                                    pixle: Colors.transparent,
//                                    time: Duration(seconds: 1),
//                                    animType: "nothing",
//                                    xAxis: 0,
//                                    yAxis: 0,
//                                  ),
//                                ),
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                recurrerntPaymentOptionTop =
                                                    1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    imgAnimation2(
                                      url: calendarIcon,
                                      time: Duration(seconds: 5),
                                      width: size.width * 0.3,
                                      beginx: 0.03,
                                      endx: -0,
                                      beginy: 0,
                                      endy: -0.0,
                                      height: size.height * 0.07,
                                      transition: PositionedTransition,
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Recurrernt funding',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'Select payment processor',
                                                style: purple22Style,
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                          (showCardForms)
                                              ? Container(
                                                  color: accent,
                                                  padding: EdgeInsets.all(10),
                                                  alignment: Alignment.center,
                                                  child: Column(
                                                    children: <Widget>[
                                                      Text(
                                                        'Please enter your card details below',
                                                        style: purple14Style,
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      Container(
                                                        height:
                                                            size.height * 0.02,
                                                      ),
                                                      Container(
                                                        color: wizardLightGray2,
                                                        padding:
                                                            EdgeInsets.all(5),
                                                        margin:
                                                            EdgeInsets.all(5),
                                                        width:
                                                            size.width * 0.75,
                                                        height:
                                                            size.height * 0.05,
                                                        child: TextField(
                                                          decoration:
                                                              InputDecoration(
                                                                  labelText:
                                                                      'Card number',
                                                                  labelStyle:
                                                                      gray12Style,
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                wizardGreen),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                wizardGreen),
                                                                  ),
                                                                  border:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                wizardGreen),
                                                                  )),
                                                        ),
                                                      ),
                                                      Container(
                                                        height:
                                                            size.height * 0.02,
                                                      ),
                                                      Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.75,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: <Widget>[
                                                              Container(
                                                                color:
                                                                    wizardLightGray2,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.05,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.33,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                          labelText:
                                                                              'Card expiry date',
                                                                          labelStyle:
                                                                              gray12Style,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          ),
                                                                          border:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          )),
                                                                ),
                                                              ),
                                                              Container(
                                                                color:
                                                                    wizardLightGray2,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(5),
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    0.05,
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    0.33,
                                                                child:
                                                                    TextField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                          labelText:
                                                                              'CVV / CVC',
                                                                          labelStyle:
                                                                              gray12Style,
                                                                          enabledBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          ),
                                                                          focusedBorder:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          ),
                                                                          border:
                                                                              UnderlineInputBorder(
                                                                            borderSide:
                                                                                BorderSide(color: wizardGreen),
                                                                          )),
                                                                ),
                                                              ),
                                                            ],
                                                          )),
                                                      Container(
                                                        height:
                                                            size.height * 0.02,
                                                      ),
                                                      Container(
                                                        width: MediaQuery.of(
                                                                context)
                                                            .size
                                                            .width,
                                                        alignment:
                                                            Alignment.center,
                                                        child: ButtonTheme(
                                                            minWidth: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width *
                                                                0.85,
                                                            height: 50.0,
                                                            child:
                                                                ElevatedButton(
                                                              style: ElevatedButton.styleFrom(
                                                                  backgroundColor:
                                                                      wizardGreen,
                                                                  shape:
                                                                      buttonShape),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: <Widget>[
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 50,
                                                                  ),
                                                                  Text(
                                                                    'Proceed',
                                                                    style:
                                                                        lightBodyStyle,
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        0.3,
                                                                    height: 50,
                                                                  ),
                                                                  Image(
                                                                    width: 50,
                                                                    height: 50,
                                                                    image: AssetImage(
                                                                        nextIcon),
                                                                  )
                                                                ],
                                                              ),
                                                              onPressed: () => {
                                                                setState(() {
                                                                  recurrerntPaymentOptionTop =
                                                                      1.2;
                                                                })
                                                              },
                                                            )),
                                                        height:
                                                            size.height * 0.1,
                                                      ),
                                                    ],
                                                  ))
                                              : Container(
                                                  color: accent,
                                                  alignment: Alignment.center,
                                                  height: size.height * 0.15,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: <Widget>[
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1,
                                                          buttonColor: accent,
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                backgroundColor:
                                                                    accent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15)),
                                                                    side: BorderSide(
                                                                        color:
                                                                            wizardGreen)),
                                                                elevation: 4.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <Widget>[
                                                                Text(
                                                                  'Pay with \nPaystack',
                                                                  style:
                                                                      purple12Style,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                imgAnimation2(
                                                                  url:
                                                                      paystackIcon,
                                                                  time: Duration(
                                                                      seconds:
                                                                          5),
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  beginx: 0.03,
                                                                  endx: -0,
                                                                  beginy: 0,
                                                                  endy: -0.0,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.04,
                                                                  transition:
                                                                      PositionedTransition,
                                                                ),
                                                              ],
                                                            ),
                                                            onPressed: () => {
                                                              setState(() {
                                                                showCardForms =
                                                                    !showCardForms;
                                                              })
                                                            },
                                                          )),
                                                      ButtonTheme(
                                                          minWidth: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.3,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              0.1,
                                                          buttonColor: accent,
                                                          child: ElevatedButton(
                                                            style: ElevatedButton.styleFrom(
                                                                backgroundColor:
                                                                    accent,
                                                                shape: RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.all(Radius.circular(
                                                                            15)),
                                                                    side: BorderSide(
                                                                        color:
                                                                            wizardGreen)),
                                                                elevation: 0.8),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceAround,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: <Widget>[
                                                                Text(
                                                                  'Pay with \nFlutterwave',
                                                                  style:
                                                                      purple12Style,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                imgAnimation2(
                                                                  url:
                                                                      flutterwaveIcon,
                                                                  time: Duration(
                                                                      seconds:
                                                                          5),
                                                                  width: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width *
                                                                      0.2,
                                                                  beginx: 0.03,
                                                                  endx: -0,
                                                                  beginy: 0,
                                                                  endy: -0.0,
                                                                  height: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .height *
                                                                      0.04,
                                                                  transition:
                                                                      PositionedTransition,
                                                                ),
                                                              ],
                                                            ),
                                                            onPressed: () => {},
                                                          )),
                                                    ],
                                                  )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'You can suspend the direct debit on your investment whenever you wish to',
                                          style: orange14Style,
                                          textAlign: TextAlign.center,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //manualTop
          AnimatedPositioned(
            top: size.height * manualTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              top: size.height * 0.01,
                              bottom: size.height * 0.03,
                              //right: -size.width * 0.05,
                              duration: Duration(seconds: 1),
                              child: WidgetAnimator(
                                component: Container(
                                  height: size.height * 0.8,
                                  width: size.width,
                                  child: imgAnimation2(
                                    url: bgMain2,
                                    time: Duration(seconds: 4),
                                    beginx: 0.3,
                                    endx: 0.2,
                                    beginy: -0.04,
                                    endy: 0,
                                    width: size.width,
                                    height: size.height * 0.8,
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
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                color: accent,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                manualTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    imgAnimation2(
                                      url: manualicon2,
                                      time: Duration(seconds: 5),
                                      width: size.width * 0.3,
                                      beginx: 0.03,
                                      endx: -0,
                                      beginy: 0,
                                      endy: -0.0,
                                      height: size.height * 0.07,
                                      transition: PositionedTransition,
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            'Manual funding',
                                            style: dark24Style,
                                            textAlign: TextAlign.center,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.02,
                                          ),
                                          Image(
                                            image: AssetImage(infoIcon),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                              alignment: Alignment.center,
                                              child: Text(
                                                'How much do you want to invest upfront?',
                                                style: purple22Style,
                                                textAlign: TextAlign.center,
                                              )),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.04,
                                          ),
                                          Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.7,
                                              alignment: Alignment.center,
                                              color: wizardLightPurple,
                                              child: TextField(
                                                decoration: textFieldDecoration,
                                              )),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.04,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor: wizardGreen,
                                            elevation:
                                                0.8, // Replaced highlightElevation
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Invest now',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              )
                                            ],
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              manualTop = 1.2;
                                              manualFundingTop = 0;
                                              showmanualFundingBtn = true;
                                            });
                                          },
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //manualFundingTop
          AnimatedPositioned(
            top: size.height * manualFundingTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.15,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.85,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                height: size.height * 0.85,
                                alignment: Alignment.center,
                                child: ExpandableTheme(
                                  data: ExpandableThemeData(
                                    iconColor: wizardGray,
                                    useInkWell: true,
                                  ),
                                  child: ListView(
                                    physics: const BouncingScrollPhysics(),
                                    padding: EdgeInsets.all(0),
                                    children: <Widget>[
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                  style: OutlinedButton.styleFrom(
                                                      shape: RoundedRectangleBorder(
                                                          side: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        style:
                                                            BorderStyle.solid,
                                                        //width: 0.8,
                                                      )),
                                                      elevation: 0.8),
                                                  child: Image(
                                                    image:
                                                        AssetImage(darkbarIcon),
                                                    width: size.width * 0.2,
                                                  ),
                                                  onPressed: () => {
                                                    setState(() {
                                                      manualFundingTop = 1.2;
                                                      showmanualFundingBtn =
                                                          false;
                                                    })
                                                  },
                                                )),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          imgAnimation2(
                                            url: manualIcon,
                                            time: Duration(seconds: 5),
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.3,
                                            beginx: 0.03,
                                            endx: -0,
                                            beginy: 0,
                                            endy: -0.0,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.07,
                                            transition: PositionedTransition,
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.01,
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Text(
                                                  'Manual funding',
                                                  style: dark24Style,
                                                  textAlign: TextAlign.center,
                                                ),
                                                Container(
                                                  width: size.width * 0.02,
                                                ),
                                                Image(
                                                  image: AssetImage(infoIcon),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.02,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10.0),
                                            child: Container(
                                                height: 1.0,
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                color: wizardGray),
                                          ),
                                          Container(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  height: size.height * 0.02,
                                                ),
                                                Container(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      'Select payment method',
                                                      style: purple22Style,
                                                      textAlign:
                                                          TextAlign.center,
                                                    )),
                                                Container(
                                                  height: size.height * 0.04,
                                                ),
                                                Container(
                                                    width: size.width * 0.85,
                                                    child: ExpandableNotifier(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        color: wizardPurple2,
                                                        child: Column(
                                                          children: <Widget>[
                                                            ScrollOnExpand(
                                                              scrollOnExpand:
                                                                  true,
                                                              scrollOnCollapse:
                                                                  false,
                                                              child:
                                                                  ExpandablePanel(
                                                                collapsed:
                                                                    Container(),
                                                                theme:
                                                                    const ExpandableThemeData(
                                                                  headerAlignment:
                                                                      ExpandablePanelHeaderAlignment
                                                                          .center,
                                                                  tapBodyToCollapse:
                                                                      true,
                                                                ),
                                                                header:
                                                                    Container(
                                                                  color:
                                                                      wizardPurple2,
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: <Widget>[
                                                                      imgAnimation2(
                                                                        url:
                                                                            debitCardIcon,
                                                                        time: Duration(
                                                                            seconds:
                                                                                5),
                                                                        width: size.width *
                                                                            0.1,
                                                                        beginx:
                                                                            0.03,
                                                                        endx:
                                                                            -0,
                                                                        beginy:
                                                                            0,
                                                                        endy:
                                                                            -0.0,
                                                                        height: size.height *
                                                                            0.07,
                                                                        transition:
                                                                            PositionedTransition,
                                                                      ),
                                                                      Text(
                                                                          'Debit card'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                expanded: (showCardForms)
                                                                    ? Container(
                                                                        color: accent,
                                                                        padding: EdgeInsets.all(10),
                                                                        alignment: Alignment.center,
                                                                        child: Column(
                                                                          children: <Widget>[
                                                                            Text(
                                                                              'Please enter your card details below',
                                                                              style: purple14Style,
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                            Container(
                                                                              height: size.height * 0.02,
                                                                            ),
                                                                            Container(
                                                                              color: wizardLightGray2,
                                                                              padding: EdgeInsets.all(5),
                                                                              margin: EdgeInsets.all(5),
                                                                              width: size.width * 0.75,
                                                                              height: size.height * 0.05,
                                                                              child: TextField(
                                                                                decoration: InputDecoration(
                                                                                    labelText: 'Card number',
                                                                                    labelStyle: gray12Style,
                                                                                    enabledBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(color: wizardGreen),
                                                                                    ),
                                                                                    focusedBorder: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(color: wizardGreen),
                                                                                    ),
                                                                                    border: UnderlineInputBorder(
                                                                                      borderSide: BorderSide(color: wizardGreen),
                                                                                    )),
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              height: size.height * 0.02,
                                                                            ),
                                                                            Container(
                                                                                width: size.width * 0.75,
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: <Widget>[
                                                                                    Container(
                                                                                      color: wizardLightGray2,
                                                                                      padding: EdgeInsets.all(5),
                                                                                      height: size.height * 0.05,
                                                                                      width: size.width * 0.33,
                                                                                      child: TextField(
                                                                                        decoration: InputDecoration(
                                                                                            labelText: 'Card expiry date',
                                                                                            labelStyle: gray12Style,
                                                                                            enabledBorder: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            ),
                                                                                            focusedBorder: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            ),
                                                                                            border: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            )),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      color: wizardLightGray2,
                                                                                      padding: EdgeInsets.all(5),
                                                                                      height: size.height * 0.05,
                                                                                      width: size.width * 0.33,
                                                                                      child: TextField(
                                                                                        decoration: InputDecoration(
                                                                                            labelText: 'CVV / CVC',
                                                                                            labelStyle: gray12Style,
                                                                                            enabledBorder: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            ),
                                                                                            focusedBorder: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            ),
                                                                                            border: UnderlineInputBorder(
                                                                                              borderSide: BorderSide(color: wizardGreen),
                                                                                            )),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                )),
                                                                            Container(
                                                                              height: size.height * 0.02,
                                                                            ),
                                                                          ],
                                                                        ))
                                                                    : Container(
                                                                        color: accent,
                                                                        alignment: Alignment.center,
                                                                        height: size.height * 0.15,
                                                                        child: Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: <Widget>[
                                                                            ButtonTheme(
                                                                                minWidth: size.width * 0.3,
                                                                                height: size.height * 0.1,
                                                                                buttonColor: accent,
                                                                                child: ElevatedButton(
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                                      side: BorderSide(color: wizardGreen), // Moved inside shape
                                                                                    ),
                                                                                    elevation: 0.8, // Replaced highlightElevation
                                                                                  ),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: <Widget>[
                                                                                      Text(
                                                                                        'Pay with \nPaystack',
                                                                                        style: purple12Style,
                                                                                        textAlign: TextAlign.center,
                                                                                      ),
                                                                                      imgAnimation2(
                                                                                        url: paystackIcon,
                                                                                        time: Duration(seconds: 5),
                                                                                        width: size.width * 0.2,
                                                                                        beginx: 0.03,
                                                                                        endx: -0,
                                                                                        beginy: 0,
                                                                                        endy: -0.0,
                                                                                        height: size.height * 0.04,
                                                                                        transition: PositionedTransition,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  onPressed: () => {
                                                                                    setState(() {
                                                                                      showCardForms = !showCardForms;
                                                                                    })
                                                                                  },
                                                                                )),
                                                                            ButtonTheme(
                                                                                minWidth: size.width * 0.3,
                                                                                height: size.height * 0.1,
                                                                                buttonColor: accent,
                                                                                child: ElevatedButton(
                                                                                  style: ElevatedButton.styleFrom(
                                                                                    shape: RoundedRectangleBorder(
                                                                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                                                                      side: BorderSide(color: wizardGreen), // Moved inside shape
                                                                                    ),
                                                                                    elevation: 0.8, // Replaced highlightElevation
                                                                                  ),
                                                                                  onPressed: () {},
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                                                    children: <Widget>[
                                                                                      Text(
                                                                                        'Pay with \nFlutterwave',
                                                                                        style: purple12Style,
                                                                                        textAlign: TextAlign.center,
                                                                                      ),
                                                                                      imgAnimation2(
                                                                                        url: flutterwaveIcon,
                                                                                        time: Duration(seconds: 5),
                                                                                        width: size.width * 0.2,
                                                                                        beginx: 0.03,
                                                                                        endx: -0,
                                                                                        beginy: 0,
                                                                                        endy: -0.0,
                                                                                        height: size.height * 0.04,
                                                                                        transition: PositionedTransition,
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                )),
                                                                          ],
                                                                        )),
                                                                builder: (_,
                                                                    collapsed,
                                                                    expanded) {
                                                                  return Padding(
                                                                    padding: EdgeInsets.only(
                                                                        left:
                                                                            10,
                                                                        right:
                                                                            10,
                                                                        bottom:
                                                                            10),
                                                                    child:
                                                                        Expandable(
                                                                      collapsed:
                                                                          collapsed,
                                                                      expanded:
                                                                          expanded,
                                                                      theme: const ExpandableThemeData(
                                                                          crossFadePoint:
                                                                              0),
                                                                    ),
                                                                  );
                                                                },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ))),
                                                Container(
                                                    width: size.width * 0.85,
                                                    child: ExpandableNotifier(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        color: wizardPurple2,
                                                        child: Column(
                                                          children: <Widget>[
                                                            ScrollOnExpand(
                                                                scrollOnExpand:
                                                                    true,
                                                                scrollOnCollapse:
                                                                    false,
                                                                child:
                                                                    ExpandablePanel(
                                                                  collapsed:
                                                                      Container(),
                                                                  header:
                                                                      Container(
                                                                    color:
                                                                        wizardPurple2,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: <Widget>[
                                                                        imgAnimation2(
                                                                          url:
                                                                              transferIcon,
                                                                          time:
                                                                              Duration(seconds: 5),
                                                                          width:
                                                                              size.width * 0.1,
                                                                          beginx:
                                                                              0.03,
                                                                          endx:
                                                                              -0,
                                                                          beginy:
                                                                              0,
                                                                          endy:
                                                                              -0.0,
                                                                          height:
                                                                              size.height * 0.07,
                                                                          transition:
                                                                              PositionedTransition,
                                                                        ),
                                                                        Text(
                                                                            'Transfer'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  expanded: Container(
                                                                      color: accent,
                                                                      padding: EdgeInsets.all(10),
                                                                      alignment: Alignment.center,
                                                                      child: Column(
                                                                        children: <Widget>[
                                                                          Container(
                                                                            child:
                                                                                Text(
                                                                              'Make a transfer to your dedicated account number to fund your wealth wizard wallet',
                                                                              style: purple12Style,
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            height:
                                                                                size.height * 0.02,
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                EdgeInsets.symmetric(horizontal: 10.0),
                                                                            child: Container(
                                                                                height: 1.0,
                                                                                width: size.width,
                                                                                color: wizardGray),
                                                                          ),
                                                                          Container(
                                                                            height:
                                                                                size.height * 0.02,
                                                                          ),
                                                                          Container(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: <Widget>[
                                                                                RichText(
                                                                                  textAlign: TextAlign.left,
                                                                                  text: TextSpan(
                                                                                    text: 'Bank name:',
                                                                                    style: purple14Style,
                                                                                    children: <TextSpan>[
                                                                                      TextSpan(
                                                                                        text: ' Wema Bank',
                                                                                        style: TextStyle(color: wizardPurple, fontWeight: FontWeight.bold),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: '\nAccount number: ',
                                                                                        style: purple14Style,
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: ' 1234567890',
                                                                                        style: TextStyle(color: wizardPurple, fontWeight: FontWeight.bold),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  width: size.width * 0.15,
                                                                                  height: size.height * 0.06,
                                                                                  alignment: Alignment.centerRight,
                                                                                  child: RawMaterialButton(
                                                                                    onPressed: () {},
                                                                                    elevation: 0,
                                                                                    child: Image(
                                                                                      image: AssetImage(copyIcon),
                                                                                    ),
                                                                                    padding: EdgeInsets.all(0),
                                                                                    shape: CircleBorder(),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      )),
                                                                  builder: (_,
                                                                      collapsed,
                                                                      expanded) {
                                                                    return Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              10),
                                                                      child:
                                                                          Expandable(
                                                                        collapsed:
                                                                            collapsed,
                                                                        expanded:
                                                                            expanded,
                                                                        theme: const ExpandableThemeData(
                                                                            crossFadePoint:
                                                                                0),
                                                                      ),
                                                                    );
                                                                  },
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ))),
                                                Container(
                                                    width: size.width * 0.85,
                                                    child: ExpandableNotifier(
                                                        child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        color: wizardPurple2,
                                                        child: Column(
                                                          children: <Widget>[
                                                            ScrollOnExpand(
                                                                scrollOnExpand:
                                                                    true,
                                                                scrollOnCollapse:
                                                                    false,
                                                                child:
                                                                    ExpandablePanel(
                                                                  collapsed:
                                                                      Container(),
                                                                  header:
                                                                      Container(
                                                                    color:
                                                                        wizardPurple2,
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: <Widget>[
                                                                        imgAnimation2(
                                                                          url:
                                                                              bankIcon,
                                                                          time:
                                                                              Duration(seconds: 5),
                                                                          width:
                                                                              size.width * 0.1,
                                                                          beginx:
                                                                              0.03,
                                                                          endx:
                                                                              -0,
                                                                          beginy:
                                                                              0,
                                                                          endy:
                                                                              -0.0,
                                                                          height:
                                                                              size.height * 0.07,
                                                                          transition:
                                                                              PositionedTransition,
                                                                        ),
                                                                        Text(
                                                                            'Bank'),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  expanded:
                                                                      Text(
                                                                    'Tobi\'s un-completed',
                                                                    softWrap:
                                                                        true,
                                                                  ),
                                                                  builder: (_,
                                                                      collapsed,
                                                                      expanded) {
                                                                    return Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              10,
                                                                          right:
                                                                              10,
                                                                          bottom:
                                                                              10),
                                                                      child:
                                                                          Expandable(
                                                                        collapsed:
                                                                            collapsed,
                                                                        expanded:
                                                                            expanded,
                                                                        theme: const ExpandableThemeData(
                                                                            crossFadePoint:
                                                                                0),
                                                                      ),
                                                                    );
                                                                  },
                                                                )),
                                                          ],
                                                        ),
                                                      ),
                                                    ))),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.08,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
          if (showmanualFundingBtn)
            AnimatedPositioned(
              top: size.height * 0.9,
              width: size.width,
              duration: Duration(seconds: 1),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: ButtonTheme(
                    minWidth: size.width * 0.85,
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: buttonShape,
                        backgroundColor: wizardGreen, // Correct property
                      ),
                      onPressed: () {
                        setState(() {
                          manualFundingTop = 1.2;
                          showmanualFundingBtn = false;
                        });
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: size.width * 0.25,
                            height: 50,
                          ),
                          Text(
                            'Invest now',
                            style: lightBodyStyle,
                          ),
                          Container(
                            width: size.width * 0.25,
                            height: 50,
                          ),
                          Image(
                            width: 40,
                            height: 40,
                            image: AssetImage(nextIcon),
                          ),
                        ],
                      ),
                    )),
                height: size.height * 0.1,
              ),
            ),

          //EuroBond
          AnimatedPositioned(
            top: size.height * euroBondTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                euroBondTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 20, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(dollarchartIcon),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Text(
                                              'The Wealth Wizard Eurobond Fund is an open-ended, low-risk mutual fund that is invested in Dollar denominated Eurobond floated by the Federal Government of Nigeria and top tier Nigerian corporates.',
                                              style: dark14Style,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 0.5,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(25, 20, 25, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Hedges against the depreciation of the Naira',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Suitable for medium-long term capital growth',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Competitive returns. ',
                                                style: dark14Style,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Image(
                                            width: 50,
                                            height: 50,
                                            image: AssetImage(chartArrowIcon),
                                          ),
                                          Text(
                                            'Yield at 12/06/2020: 5.1234% p/a',
                                            style: purple16Style,
                                          )
                                        ],
                                      ),
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor:
                                                wizardGreen, // Correct property
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              euroBondTop = 1.2;
                                              frequencyOptionTop = 0.1;
                                              dollarAndNairaInvTypes = 1.2;
                                            });
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Invest now',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //discoveryFundTop
          AnimatedPositioned(
            top: size.height * discoveryFundTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                discoveryFundTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 20, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Image(
                                            image:
                                                AssetImage(discoveryFundIcon),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Text(
                                              'The Wealth Wizard Discovery Fund is suitable for investors who want high capital growth over the long term to meet various objectives such as college fund, or leaving a legacy for loved ones.',
                                              style: dark14Style,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 0.5,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(25, 20, 25, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Moderate risk',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Suitable for medium - long term investments',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Competitive returns. ',
                                                style: dark14Style,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor:
                                                wizardGreen, // Correct property
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              discoveryFundTop = 1.2;
                                              frequencyOptionTop = 0.1;
                                              dollarAndNairaInvTypes = 1.2;
                                            });
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Invest now',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),

          //ethicalFundTop
          AnimatedPositioned(
            top: size.height * ethicalFundTop,
            duration: Duration(milliseconds: 400),
            child: Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  color: wizardOverlayLightPurple,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.transparent,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(18)),
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        height: size.height * 0.55,
                        width: size.width,
                        color: accent,
                        child: Stack(
                          children: <Widget>[
                            AnimatedPositioned(
                              right: 0,
                              left: 0,
                              duration: Duration(seconds: 1),
                              child: Container(
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topCenter,
                                      height: size.height * 0.02,
                                      child: ButtonTheme(
                                          height: 10.0,
                                          child: OutlinedButton(
                                            child: Image(
                                              image: AssetImage(darkbarIcon),
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  0.2,
                                            ),
                                            onPressed: () => {
                                              setState(() {
                                                ethicalFundTop = 1.2;
                                              })
                                            }, //callback when button is clicked
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                color: Colors
                                                    .transparent, // Border color
                                                style: BorderStyle.solid,
                                              ),
                                              elevation:
                                                  0.8, // Removed highlightElevation (not used in OutlinedButton)
                                            ),
                                          )),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      padding:
                                          EdgeInsets.fromLTRB(20, 20, 20, 10),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Image(
                                            image: AssetImage(ethicalFundIcon),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.7,
                                            child: Text(
                                              'The Wealth Wizard Ethical Fund is suitable for Islamic investors who want long-term capital growth by investing strictly according to the principles of Islamic finance and ethical values.',
                                              style: dark14Style,
                                              textAlign: TextAlign.left,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 0.5,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      padding:
                                          EdgeInsets.fromLTRB(25, 20, 25, 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Moderate risk',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Suitable for medium - long term investments',
                                                style: dark14Style,
                                              )
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Image(
                                                width: 30,
                                                height: 30,
                                                image: AssetImage(check),
                                              ),
                                              Text(
                                                'Competitive returns. ',
                                                style: dark14Style,
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    Container(
                                      height: size.height * 0.01,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Container(
                                          height: 1.0,
                                          width: size.width,
                                          color: wizardGray),
                                    ),
                                    Container(
                                      height: size.height * 0.02,
                                    ),
                                    ButtonTheme(
                                        minWidth: size.width * 0.8,
                                        height: 50.0,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: buttonShape,
                                            backgroundColor:
                                                wizardGreen, // Replaces `color`
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              discoveryFundTop = 1.2;
                                              frequencyOptionTop = 0.1;
                                              dollarAndNairaInvTypes = 1.2;
                                            });
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: <Widget>[
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Text(
                                                'Invest now',
                                                style: lightBodyStyle,
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    0.25,
                                                height: 50,
                                              ),
                                              Image(
                                                width: 40,
                                                height: 40,
                                                image: AssetImage(nextIcon),
                                              ),
                                            ],
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ),
//              if(showInvestmenttypes)AnimatedPositioned (
//                top: size.height * 0.9,
//                width: size.width,
//                duration: Duration(seconds: 1),
//                child: Container(
//                  width: size.width,
//                  alignment: Alignment.center,
//                  child: ButtonTheme(
//                      minWidth: size.width * 0.85,
//                      height: 50.0,
//                      child: ElevatedButton(
//                        child: Row(
//                          mainAxisSize: MainAxisSize.min,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          children: <Widget>[
//                            Container( width: size.width *0.3,height: 50,),
//                            Text(
//                              'Proceed',
//                              style: lightBodyStyle,
//                            ),
//                            Container( width: size.width *0.3,height: 50,),
//                            Image(width: 50, height: 50, image: AssetImage(nextIcon),)
//                          ],
//                        ),
//                        onPressed: () {
//                          setState(() {
//                            if(setUpGoal){
//                              //panelController.open();
//                              //panelController.show();
//                              //sliderPosition =
//                              goalNameSetupTop = 0;
//                            }
//                            else if(!setUpInvest){
//                              showInvestmenttypes = false;
//                              showCurrencyOptions = true;
//                            }
//                          });
//                        },
//                        color: wizardGreen,
//                      )),
//                  height: size.height * 0.1,
//                ),
//              ),//investment type proceed button

//              if(showNairaInvestmentOptions)AnimatedPositioned (
//                  top: size.height * 0.1,
//                  duration: Duration(seconds: 1),
//                  child: Container(
//                      padding: EdgeInsets.all(size.width * 0.05),
//                      alignment: Alignment.topLeft,
//                      width: size.width,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        mainAxisSize: MainAxisSize.max,
//                        children: <Widget>[
//                          Container(
//                            alignment: Alignment.center,
//                            child: Text(
//                              'What investment vehicle are you looking to invest in?',
//                              style: purple22Style,
//                              textAlign: TextAlign.center,
//                            ),
//                          ),
//                          Container(
//                            height: size.height * 0.02,
//                          ),
//                          Container(
//                            height: size.height * 0.8,
//                            alignment: Alignment.center,
//                            child: Column(
//                              children: <Widget>[
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                mainAxisSize: MainAxisSize.max,
//                                crossAxisAlignment: CrossAxisAlignment.center,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment:
//                                    MainAxisAlignment.center,
//                                    mainAxisSize: MainAxisSize.max,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                    children: <Widget>[
//                                      AnimatedCrossFade(
//                                        duration: const Duration(milliseconds: 200),
//                                        firstChild:Container(
//                                          child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                        secondChild:Container(
//                                          width: size.width * 0.08,
//                                          height: size.height * 0.08,
//                                          alignment: Alignment.center,
//                                          decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            color: accent,
//                                          ),
//                                        ),
//                                        crossFadeState: showMMFCheck
//                                            ? CrossFadeState.showFirst
//                                            : CrossFadeState.showSecond,
//                                      ),
//                                      Container(
//                                        width: size.width * 0.33,
//                                        alignment: Alignment.center,
//                                        color: accent,
//                                        child: ButtonTheme(
//                                            minWidth:
//                                            size.width * 0.3,
//                                            height: size.height * 0.25,
//                                            buttonColor: accent,
//                                            child: OutlinedButton(
//                                              color: accent,
//                                              child: Column(
//                                                  mainAxisSize: MainAxisSize.max,
//                                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                                  children: <Widget>[
//                                                    Text('Wealth Wizard Money Market Fund',style: gray16Style,textAlign: TextAlign.center,),
//                                                    AnimatedCrossFade(
//                                                      duration: const Duration(seconds: 1),
//                                                      firstChild: WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: mmfChartIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      secondChild: Container(
//                                                        height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                        child: imgAnimation2(url: mmfChartIcon,time: Duration(seconds: 2),
//                                                          width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                          height: size.height * 0.1,transition: PositionedTransition,
//                                                        ),),
//                                                      crossFadeState: showMMFCheck
//                                                          ? CrossFadeState.showFirst
//                                                          : CrossFadeState.showSecond,
//                                                    ),
//                                                  ]),
//                                              onPressed: () => {
//                                                setState(() {
//                                                  showMMFCheck = !showMMFCheck;
//                                                  showEthicalFundCheck = false;
//                                                  showDiscoveryFundCheck = false;
//                                                  showFixedIncomeCheck = false;
//                                                })
//                                              },
//                                              borderSide: BorderSide(
//                                                color: showMMFCheck ? wizardGreen:accent,
//                                                style: BorderStyle.solid,
//                                                width: 0.8,
//                                              ),
//                                              highlightElevation: 0.8,
//                                            )),
//                                      ),
//                                    ],
//                                  ),
//                                  Column(
//                                    mainAxisAlignment:
//                                    MainAxisAlignment.center,
//                                    mainAxisSize: MainAxisSize.max,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                    children: <Widget>[
//                                      AnimatedCrossFade(
//                                        duration: const Duration(milliseconds: 200),
//                                        firstChild: Container(
//                                          child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                        secondChild: Container(
//                                          width: size.width * 0.08,
//                                          height: size.height * 0.08,
//                                          alignment: Alignment.center,
//                                          decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            color: accent,
//                                          ),
//                                        ),
//                                        crossFadeState: showFixedIncomeCheck
//                                            ? CrossFadeState.showFirst
//                                            : CrossFadeState.showSecond,
//                                      ),
//                                      Container(
//                                        width: size.width * 0.33,
//                                        alignment: Alignment.center,
//                                        color: accent,
//                                        child: ButtonTheme(
//                                            minWidth:
//                                            size.width * 0.3,
//                                            height: size.height * 0.25,
//                                            buttonColor: accent,
//                                            child: OutlinedButton(
//                                              color: accent,
//                                              child: Column(
//                                                  mainAxisSize: MainAxisSize.max,
//                                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                                  children: <Widget>[
//                                                    Text('Wealth Wizard Fixed Income Fund',style: gray16Style,textAlign: TextAlign.center,),
//                                                    AnimatedCrossFade(
//                                                      duration: const Duration(seconds: 1),
//                                                      firstChild:WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: fixedIncomeIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      secondChild:  WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: fixedIncomeIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      crossFadeState: showFixedIncomeCheck
//                                                          ? CrossFadeState.showFirst
//                                                          : CrossFadeState.showSecond,
//                                                    ),
//                                                  ]),
//                                              onPressed: () => {
//                                                setState(() {
//                                                  showFixedIncomeCheck = !showFixedIncomeCheck;
//                                                  showMMFCheck = false;
//                                                  showEthicalFundCheck = false;
//                                                  showDiscoveryFundCheck = false;
//                                                })
//                                              }, //callback when button is clicked
//                                              borderSide: BorderSide(
//                                                color: showFixedIncomeCheck? wizardGreen:accent,
//                                                style: BorderStyle.solid,
//                                                width: 0.8,
//                                              ),
//                                              highlightElevation: 0.8,
//                                            )),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                              Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                mainAxisSize: MainAxisSize.max,
//                                crossAxisAlignment: CrossAxisAlignment.center,
//                                children: <Widget>[
//                                  Column(
//                                    mainAxisAlignment:
//                                    MainAxisAlignment.center,
//                                    mainAxisSize: MainAxisSize.max,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                    children: <Widget>[
//                                      AnimatedCrossFade(
//                                        duration: const Duration(milliseconds: 200),
//                                        firstChild:Container(
//                                          child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                        secondChild:Container(
//                                          width: size.width * 0.08,
//                                          height: size.height * 0.08,
//                                          alignment: Alignment.center,
//                                          decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            color: accent,
//                                          ),
//                                        ),
//                                        crossFadeState: showDiscoveryFundCheck
//                                            ? CrossFadeState.showFirst
//                                            : CrossFadeState.showSecond,
//                                      ),
//                                      Container(
//                                        width: size.width *
//                                            0.33,
//                                        alignment: Alignment.center,
//                                        color: accent,
//                                        child: ButtonTheme(
//                                            minWidth:
//                                            size.width * 0.3,
//                                            height: size.height * 0.25,
//                                            buttonColor: accent,
//                                            child: OutlinedButton(
//                                              color: accent,
//                                              child: Column(
//                                                  mainAxisSize: MainAxisSize.max,
//                                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                                  children: <Widget>[
//                                                    Text('Wealth Wizard Discovery Fund',style: gray16Style,textAlign: TextAlign.center,),
//                                                    AnimatedCrossFade(
//                                                      duration: const Duration(seconds: 1),
//                                                      firstChild: WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: discoveryFundIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      secondChild: Container(
//                                                        height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                        child: imgAnimation2(url: discoveryFundIcon,time: Duration(seconds: 2),
//                                                          width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                          height: size.height * 0.1,transition: PositionedTransition,
//                                                        ),),
//                                                      crossFadeState: showDiscoveryFundCheck
//                                                          ? CrossFadeState.showFirst
//                                                          : CrossFadeState.showSecond,
//                                                    ),
//                                                  ]),
//                                              onPressed: () => {
//                                                setState(() {
//                                                  showDiscoveryFundCheck = !showDiscoveryFundCheck;
//                                                  showMMFCheck = false;
//                                                  showEthicalFundCheck = false;
//                                                  showFixedIncomeCheck = false;
//                                                })
//                                              },
//                                              borderSide: BorderSide(
//                                                color: showDiscoveryFundCheck ? wizardGreen:accent,
//                                                style: BorderStyle.solid,
//                                                width: 0.8,
//                                              ),
//                                              highlightElevation: 0.8,
//                                            )),
//                                      ),
//                                    ],
//                                  ),
//                                  Column(
//                                    mainAxisAlignment:
//                                    MainAxisAlignment.center,
//                                    mainAxisSize: MainAxisSize.max,
//                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                    children: <Widget>[
//                                      AnimatedCrossFade(
//                                        duration: const Duration(milliseconds: 200),
//                                        firstChild: Container(
//                                          child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                        secondChild: Container(
//                                          width: size.width * 0.08,
//                                          height: size.height * 0.08,
//                                          alignment: Alignment.center,
//                                          decoration: BoxDecoration(
//                                            shape: BoxShape.circle,
//                                            color: accent,
//                                          ),
//                                        ),
//                                        crossFadeState: showEthicalFundCheck
//                                            ? CrossFadeState.showFirst
//                                            : CrossFadeState.showSecond,
//                                      ),
//                                      Container(
//                                        width: size.width * 0.33,
//                                        alignment: Alignment.center,
//                                        color: accent,
//                                        child: ButtonTheme(
//                                            minWidth:size.width * 0.3,
//                                            height: size.height * 0.25,
//                                            buttonColor: accent,
//                                            child: OutlinedButton(
//                                              color: accent,
//                                              child: Column(
//                                                  mainAxisSize: MainAxisSize.max,
//                                                  mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                                  children: <Widget>[
//                                                    Text('Wealth Wizard Ethical Fund',style: gray16Style,textAlign: TextAlign.center,),
//                                                    AnimatedCrossFade(
//                                                      duration: const Duration(seconds: 1),
//                                                      firstChild:WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: ethicalFundIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      secondChild:  WidgetAnimator(
//                                                        component: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: ethicalFundIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                      ),
//                                                      crossFadeState: showEthicalFundCheck
//                                                          ? CrossFadeState.showFirst
//                                                          : CrossFadeState.showSecond,
//                                                    ),
//                                                  ]),
//                                              onPressed: () => {
//                                                setState(() {
//                                                  showEthicalFundCheck = !showEthicalFundCheck;
//                                                  showMMFCheck = false;
//                                                  showDiscoveryFundCheck = false;
//                                                  showFixedIncomeCheck = false;
//                                                })
//                                              }, //callback when button is clicked
//                                              borderSide: BorderSide(
//                                                color: showEthicalFundCheck? wizardGreen:accent,
//                                                style: BorderStyle.solid,
//                                                width: 0.8,
//                                              ),
//                                              highlightElevation: 0.8,
//                                            )),
//                                      ),
//                                    ],
//                                  ),
//                                ],
//                              ),
//                            ],),
//
//                          ),
//                        ],
//                      ))
//              ),
//
//              if(showNairaInvestmentOptions)AnimatedPositioned (
//                top: size.height * 0.9,
//                width: size.width,
//                duration: Duration(seconds: 1),
//                child: Container(
//                  width: size.width,
//                  alignment: Alignment.center,
//                  child: ButtonTheme(
//                      minWidth: size.width * 0.85,
//                      height: 50.0,
//                      child: ElevatedButton(
//                        child: Row(
//                          mainAxisSize: MainAxisSize.min,
//                          crossAxisAlignment: CrossAxisAlignment.center,
//                          mainAxisAlignment: MainAxisAlignment.spaceAround,
//                          children: <Widget>[
//                            Container( width: size.width *0.3,height: 50,),
//                            Text('Proceed',style: lightBodyStyle,),
//                            Container( width: size.width *0.3,height: 50,),
//                            Image(width: 50, height: 50, image: AssetImage(nextIcon),)
//                          ],
//                        ),
//                        onPressed: () {
//                          setState(() {
//                            if(showMMFCheck){
//                              initialHeight = size.height * 0.5;
//                              maximumHeight =size.height * 0.5;
//                              goalNameSetupTop = -size.height * 1.2;
//                              mmfTop = 0;
//                              panelController.open();
//                              panelController.show();
//                            }
//                            if(showFixedIncomeCheck){
//                              initialHeight = size.height * 0.4;
//                              maximumHeight =size.height * 0.4;
//                              goalNameSetupTop = -size.height * 1.2;
//                              fixedIncomeTop = 0;
//                              panelController.open();
//                              panelController.show();
//                            }
//                            if(showDiscoveryFundCheck){
//                              initialHeight = size.height * 0.8;
//                              maximumHeight =size.height * 0.8;
//                              discoveryFundTop = 0;
//                              panelController.open();
//                              panelController.show();
//
//                            }
//                            if(showEthicalFundCheck){
//
//                            }
//                          });
//                        },
//                        color: wizardGreen,
//                      )),
//                  height: size.height * 0.1,
//                ),
//              ),
//
//              if(showFrequencyOptions)AnimatedPositioned (
//                  top: size.height * 0.1,
//                  duration: Duration(seconds: 1),
//                  child: Container(
//                      padding: EdgeInsets.all(size.width * 0.05),
//                      alignment: Alignment.topLeft,
//                      width: size.width,
//                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.start,
//                        crossAxisAlignment: CrossAxisAlignment.start,
//                        mainAxisSize: MainAxisSize.max,
//                        children: <Widget>[
//                          Container(
//                            alignment: Alignment.center,
//                            child: Text(
//                              'How do you intend to fund this  investment?',
//                              style: purple22Style,
//                              textAlign: TextAlign.center,
//                            ),
//                          ),
//                          Container(
//                            height: size.height * 0.02,
//                          ),
//                          Container(
//                            height: size.height * 0.8,
//                            alignment: Alignment.center,
//                            child: Column(
//                              children: <Widget>[
//                                Row(
//                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                  mainAxisSize: MainAxisSize.max,
//                                  crossAxisAlignment: CrossAxisAlignment.center,
//                                  children: <Widget>[
//                                    Column(
//                                      mainAxisAlignment:
//                                      MainAxisAlignment.center,
//                                      mainAxisSize: MainAxisSize.max,
//                                      crossAxisAlignment: CrossAxisAlignment.center,
//                                      children: <Widget>[
//                                        AnimatedCrossFade(
//                                          duration: const Duration(milliseconds: 200),
//                                          firstChild:Container(
//                                            child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                          secondChild:Container(
//                                            width: size.width * 0.08,
//                                            height: size.height * 0.08,
//                                            alignment: Alignment.center,
//                                            decoration: BoxDecoration(
//                                              shape: BoxShape.circle,
//                                              color: accent,
//                                            ),
//                                          ),
//                                          crossFadeState: showRecurrentOptions
//                                              ? CrossFadeState.showFirst
//                                              : CrossFadeState.showSecond,
//                                        ),
//                                        Container(
//                                          width: size.width * 0.33,
//                                          alignment: Alignment.center,
//                                          color: accent,
//                                          child: ButtonTheme(
//                                              minWidth:
//                                              size.width * 0.3,
//                                              height: size.height * 0.25,
//                                              buttonColor: accent,
//                                              child: OutlinedButton(
//                                                color: accent,
//                                                child: Column(
//                                                    mainAxisSize: MainAxisSize.max,
//                                                    mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                                    children: <Widget>[
//                                                      Text('Recurrent Funding',style: gray16Style,textAlign: TextAlign.center,),
//                                                      AnimatedCrossFade(
//                                                        duration: const Duration(seconds: 1),
//                                                        firstChild: WidgetAnimator(
//                                                          component: Container(
//                                                            height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                            child: imgAnimation2(url: calendarIcon,time: Duration(seconds: 2),
//                                                              width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                              height: size.height * 0.1,transition: PositionedTransition,
//                                                            ),),
//                                                          transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                        ),
//                                                        secondChild: Container(
//                                                          height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                          child: imgAnimation2(url: calendarIcon,time: Duration(seconds: 2),
//                                                            width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                            height: size.height * 0.1,transition: PositionedTransition,
//                                                          ),),
//                                                        crossFadeState: showRecurrentOptions
//                                                            ? CrossFadeState.showFirst
//                                                            : CrossFadeState.showSecond,
//                                                      ),
//                                                    ]),
//                                                onPressed: () => {
//                                                  setState(() {
//                                                    showRecurrentOptions = !showRecurrentOptions;
//                                                    showManualOptions = false;
//                                                  })
//                                                },
//                                                borderSide: BorderSide(
//                                                  color: showRecurrentOptions ? wizardGreen:accent,
//                                                  style: BorderStyle.solid,
//                                                  width: 0.8,
//                                                ),
//                                                highlightElevation: 0.8,
//                                              )),
//                                        ),
//                                      ],
//                                    ),
//                                    Column(
//                                      mainAxisAlignment:
//                                      MainAxisAlignment.center,
//                                      mainAxisSize: MainAxisSize.max,
//                                      crossAxisAlignment: CrossAxisAlignment.center,
//                                      children: <Widget>[
//                                        AnimatedCrossFade(
//                                          duration: const Duration(milliseconds: 200),
//                                          firstChild: Container(
//                                            child: Icon(Icons.check,color: wizardGreen,size: size.height * 0.08,),),
//                                          secondChild: Container(
//                                            width: size.width * 0.08,
//                                            height: size.height * 0.08,
//                                            alignment: Alignment.center,
//                                            decoration: BoxDecoration(
//                                              shape: BoxShape.circle,
//                                              color: accent,
//                                            ),
//                                          ),
//                                          crossFadeState: showManualOptions
//                                              ? CrossFadeState.showFirst
//                                              : CrossFadeState.showSecond,
//                                        ),
//                                        Container(
//                                          width: size.width * 0.33,
//                                          alignment: Alignment.center,
//                                          color: accent,
//                                          child: ButtonTheme(
//                                              minWidth:
//                                              size.width * 0.3,
//                                              height: size.height * 0.25,
//                                              buttonColor: accent,
//                                              child: OutlinedButton(
//                                                color: accent,
//                                                child: Column(
//                                                    mainAxisSize: MainAxisSize.max,
//                                                    mainAxisAlignment:MainAxisAlignment.spaceAround,
//                                                    crossAxisAlignment: CrossAxisAlignment.center,
//                                                    children: <Widget>[
//                                                      Text('Manual Funding',style: gray16Style,textAlign: TextAlign.center,),
//                                                      AnimatedCrossFade(
//                                                        duration: const Duration(seconds: 1),
//                                                        firstChild:WidgetAnimator(
//                                                          component: Container(
//                                                            height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                            child: imgAnimation2(url: manualIcon,time: Duration(seconds: 2),
//                                                              width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                              height: size.height * 0.1,transition: PositionedTransition,
//                                                            ),),
//                                                          transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                        ),
//                                                        secondChild:  WidgetAnimator(
//                                                          component: Container(
//                                                            height: size.height * 0.17,width: size.width,color: Colors.transparent,alignment: Alignment.center,
//                                                            child: imgAnimation2(url: manualIcon,time: Duration(seconds: 2),
//                                                              width: size.width * 0.9,beginx:0.03,endx: -0, beginy: 0,endy: -0.0,
//                                                              height: size.height * 0.1,transition: PositionedTransition,
//                                                            ),),
//                                                          transition: Transform,animPattern: Curves.easeIn,pixle: Colors.transparent,time: Duration(seconds: 1),animType: "nothing",xAxis: 0,yAxis: 0,
//                                                        ),
//                                                        crossFadeState: showManualOptions
//                                                            ? CrossFadeState.showFirst
//                                                            : CrossFadeState.showSecond,
//                                                      ),
//                                                    ]),
//                                                onPressed: () => {
//                                                  setState(() {
//                                                    showManualOptions = !showManualOptions;
//                                                    showRecurrentOptions = false;
//                                                  })
//                                                }, //callback when button is clicked
//                                                borderSide: BorderSide(
//                                                  color: showManualOptions? wizardGreen:accent,
//                                                  style: BorderStyle.solid,
//                                                  width: 0.8,
//                                                ),
//                                                highlightElevation: 0.8,
//                                              )),
//                                        ),
//                                      ],
//                                    ),
//                                  ],
//                                ),
//                              ],),
//
//                          ),
//                        ],
//                      ))
//              ),
//investment frequency proceed button
        ],
      ),
    );

//      Material(
//      child: SlidingUpPanel(
//        parallaxEnabled: true,
//        parallaxOffset: 0.1,
//        backdropEnabled: true,
//        controller: panelController,
//       // minHeight: initialHeight,
//        isDraggable: true,panelSnapping: true,
//       // maxHeight: maximumHeight,backdropColor: wizardPurple,
//        borderRadius: radius,
//        panel: Stack(
//          children: <Widget>[
////            AnimatedPositioned(
////              top: recurrerntFrequencyTop,
////              right: 0,
////              left: 0,
////              duration: Duration(seconds: 1),
////              child: Container(
////                alignment: Alignment.center,
////                child: Column(
////                  mainAxisSize: MainAxisSize.max,
////                  crossAxisAlignment: CrossAxisAlignment.center,
////                  mainAxisAlignment: MainAxisAlignment.start,
////                  children: <Widget>[
////                    Container(
////                      height: size.height * 0.01,
////                    ),
////                    imgAnimation2(
////                      url: calendarIcon,
////                      time: Duration(seconds: 5),
////                      width:
////                      size.width * 0.3,
////                      beginx: 0.03,
////                      endx: -0,
////                      beginy: 0,
////                      endy: -0.0,
////                      height:
////                      size.height * 0.07,
////                      transition: PositionedTransition,
////                    ),
////                    Container(
////                      height: size.height * 0.01,
////                    ),
////                    Container(
////                      alignment: Alignment.center,
////                      child: Row(
////                        mainAxisSize: MainAxisSize.max,
////                        crossAxisAlignment: CrossAxisAlignment.center,
////                        mainAxisAlignment: MainAxisAlignment.center,
////                        children: <Widget>[
////                          Text(
////                            'Recurrernt funding',
////                            style: dark24Style,
////                            textAlign: TextAlign.center,
////                          ),
////                          Container(
////                            width: size.width * 0.02,
////                          ),
////                          Image(image: AssetImage(infoIcon),),
////                        ],
////                      ),
////                    ),
////                    Container(
////                      height: size.height * 0.01,
////                    ),
////                    Padding(
////                      padding: EdgeInsets.symmetric(horizontal: 10.0),
////                      child: Container(
////                          height: 1.0,
////                          width: size.width,
////                          color: wizardGray),
////                    ),
////                    Container(
////                      child: Column(
////                        mainAxisSize: MainAxisSize.max,
////                        mainAxisAlignment: MainAxisAlignment.center,
////                        crossAxisAlignment: CrossAxisAlignment.center,
////                        children: <Widget>[
////                          Container(
////                            height: size.height * 0.01,
////                          ),
////                          Container(
////                              alignment: Alignment.center,
////                              child:Text('How often do you want to fund your investment?',style: purple22Style, textAlign: TextAlign.center,)
////                          ),
////                          Container(
////                            height: size.height * 0.01,
////                          ),
////                          Container(
////                              alignment: Alignment.center,
////                              child:Row(
////                                mainAxisSize: MainAxisSize.max,
////                                mainAxisAlignment: MainAxisAlignment.spaceAround,
////                                crossAxisAlignment: CrossAxisAlignment.center,
////                                children: <Widget>[
////                                  Container(
////                                    alignment: Alignment.center,color: accent,
////                                    child: ButtonTheme(
////                                        minWidth: size.width *0.4,
////                                        height: 50.0,
////                                        child:OutlinedButton(
////                                          color: accent,
////                                          child: Text('Weekly',style: green14Style,textAlign: TextAlign.center,),
////                                          onPressed: () => {
////                                            Navigator.pushNamed(context, '/kycUpload')
////                                          }, //callback when button is clicked
////                                          borderSide: BorderSide(
////                                            color: wizardGreen,
////                                            style: BorderStyle.solid,
////                                            width: 2,
////                                          ),
////                                          highlightElevation: 10,
////                                        )
////                                    ),
////                                    width: size.width * 0.4,
////                                    height: 50,
////                                  ),
////                                  Container(
////                                    alignment: Alignment.center,color: accent,
////                                    child: ButtonTheme(
////                                        minWidth: size.width *0.4,
////                                        height: 50.0,
////                                        child:OutlinedButton(
////                                          color: accent,
////                                          child: Text('Monthly',style: green14Style,textAlign: TextAlign.center,),
////                                          onPressed: () => {
////                                            Navigator.pushNamed(context, '/kycUpload')
////                                          }, //callback when button is clicked
////                                          borderSide: BorderSide(
////                                            color: wizardGreen,
////                                            style: BorderStyle.solid,
////                                            width: 2,
////                                          ),
////                                          highlightElevation: 10,
////                                        )
////                                    ),
////                                    width: size.width * 0.4,
////                                    height: 50,
////                                  ),
////                                ],
////                              )
////                          ),
////                          Container(
////                            height: size.height * 0.02,
////                          ),
////                          Container(
////                              width: size.width * 0.8,
////                              alignment: Alignment.center,
////                              child:Row(
////                                mainAxisAlignment: MainAxisAlignment.spaceAround,
////                                mainAxisSize: MainAxisSize.max,
////                                crossAxisAlignment: CrossAxisAlignment.end,
////                                children: <Widget>[
////                                  Container(
////                                    width: size.width * 0.55,
////                                    alignment: Alignment.center,
////                                    child: Column(
////                                      mainAxisSize: MainAxisSize.min,
////                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
////                                      crossAxisAlignment: CrossAxisAlignment.start,
////                                      children: <Widget>[
////                                        Text(
////                                          'Proceed to debit amount',
////                                          style: dark14Style,
////                                          textAlign: TextAlign.left,
////                                        ),
////                                        Container(
////                                          //height: size.height * 0.06,
////                                          child: LinearPercentIndicator(
////                                            width: size.width * 0.55,
////                                            animation: true,
////                                            lineHeight: 20.0,
////                                            animationDuration: 2500,
////                                            percent: 0.8,
////                                            center: Text("80%"),
////                                            linearStrokeCap: LinearStrokeCap.roundAll,
////                                            progressColor: wizardOrange,
////                                          ),
////                                        ),
////                                      ],
////                                    ),
////                                  ),
////                                  Container(
////                                    child:ButtonTheme(
////                                        minWidth: size.width * 0.1,
////                                        height: 50.0,
////                                        child: ElevatedButton(
////                                          child: Image(width: size.width * 0.1, height: 50, image: AssetImage(nextIcon),),
////                                          onPressed: () {
////                                            setState(() {
////                                              recurrerntAmountTop = 0;
////                                              recurrerntFrequencyTop = size.height * 1.2;
////                                            });
////                                          },
////                                          color: wizardGreen,
////                                        )),
////                                  )
////                                ],)
////                          ),
////                        ],
////                      ),
////                    ),
////                    Container(
////                      height: size.height * 0.02,
////                    ),
////                    Padding(
////                      padding: EdgeInsets.symmetric(horizontal: 10.0),
////                      child: Container(
////                          height: 1.0,
////                          width: size.width,
////                          color: wizardGray),
////                    ),
////                    Container(
////                      height: size.height * 0.01,
////                    ),
////                    Container(
////                        alignment: Alignment.center,
////                        child: Text('You can suspend the direct debit on your investment whenever you wish to',
////                          style: orange14Style,textAlign: TextAlign.center,)
////                    ),
////                  ],
////                ),
////              ),
////            ),
////
////            AnimatedPositioned (
////              top: size.height * 0.7,
////              width: size.width,
////              duration: Duration(seconds: 1),
////              child: Container(
////                width: size.width,
////                alignment: Alignment.center,
////                child: ButtonTheme(
////                    minWidth: size.width * 0.85,
////                    height: 50.0,
////                    child: ElevatedButton(
////                      child: Row(
////                        mainAxisSize: MainAxisSize.min,
////                        crossAxisAlignment: CrossAxisAlignment.center,
////                        mainAxisAlignment: MainAxisAlignment.spaceAround,
////                        children: <Widget>[
////                          Container( width: size.width *0.3,height: 50,),
////                          Text(
////                            'Proceed',
////                            style: lightBodyStyle,
////                          ),
////                          Container( width: size.width *0.3,height: 50,),
////                          Image(width: 50, height: 50, image: AssetImage(nextIcon),)
////                        ],
////                      ),
////                      onPressed: () {
////                        setState(() {
////                          _currentPage = ++_currentPage % 3;
////                          switch(_currentPage){
////                            case 0:
////                              panelController.hide();
////                              showSkip = false;
////                              showInvestmenttypes = false;
////                              showCurrencyOptions = true;
////                              //goalNameSetupTop = 0;
////                              goalAmountSetupTop = -size.height * 1.2;
////                              groupGoalInviteSetupTop = -size.height * 1.2;
////                              break;
////                            case 1:
////                              goalNameSetupTop = size.height * 1.2;
////                              goalAmountSetupTop = 0;
////                              groupGoalInviteSetupTop = -size.height * 1.2;
////                              break;
////                            case 2:
////                              showSkip = true;
////                              goalNameSetupTop = size.height * 1.2;
////                              goalAmountSetupTop = size.height * 1.2;
////                              groupGoalInviteSetupTop = 0;
////                              break;
////                          }
////                        });
////                      },
////                      color: wizardGreen,
////                    )),
////                height: size.height * 0.1,
////              ),
////            ),
//          ],
//        ),
//        body:
//      ),
//    );
  }
}
