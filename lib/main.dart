
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payday_investor/welcome_packs/advisorsummary.dart';
import 'package:payday_investor/welcome_packs/dump.dart';
import 'package:payday_investor/welcome_packs/getstarted.dart';
import 'package:payday_investor/welcome_packs/kycuploads.dart';
import 'package:payday_investor/welcome_packs/personalinfo1.dart';
import 'package:payday_investor/welcome_packs/personalinfo2.dart';
import 'package:payday_investor/welcome_packs/personalinfo3.dart';
import 'package:payday_investor/welcome_packs/register.dart';
import 'package:payday_investor/welcome_packs/registrationtoken.dart';
import 'package:payday_investor/welcome_packs/roboadvisor.dart';
import 'package:payday_investor/welcome_packs/setupinvestment.dart';
import 'package:payday_investor/welcome_packs/walkthrough.dart';

import 'externals/logins.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
          // When navigating to the "/" route, build the FirstScreen widget.
          //'/': (context) => WalkThrough(),
          // When navigating to the "/second" route, build the SecondScreen widget.
        '/registerationToken': (context) => registerationTokenPage(),
        '/signup': (context) => registerPage(),
        '/personalinfo1': (context) => personalinfo1Page(),
        '/personalinfo2': (context) => personalinfo2Page(),
        '/personalinfo3': (context) => personalinfo3Page(),
        '/kycUpload': (context) => kycUploadPage(),
        '/getStarted': (context) => getStartedPage(),
        '/dump': (context) => testPage(),
        '/setUpGoal': (context) => setUpInvestmentPage(),
        '/roboAdvisor': (context) => roboAdvisorPage(),
        '/advisorSummary': (context) => advisorSummaryPage(),
        '/login': (context) => loginPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        // return landing.route();
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: walkthroughPage(),
    );
  }
}

