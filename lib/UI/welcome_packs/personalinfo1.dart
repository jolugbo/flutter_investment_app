import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wealth_wizard/UI/welcome_packs/personalinfo2.dart';
import 'package:wealth_wizard/constants/app_images.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/percent_indicator.dart';

class personalinfo1Page extends StatefulWidget {
  personalinfo1Page();

  @override
  _Personalinfo1PageState createState() => _Personalinfo1PageState();
}

class _Personalinfo1PageState extends State<personalinfo1Page>
    with TickerProviderStateMixin {
  String leafIcon = AppImages.leaficon;
  String bgMain = AppImages.purplebg;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
          
          //Region Header(logo back button)
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
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () => Navigator.pop(context),
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
              )
            ),

          //Region Basic Information form
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
                        width: size.width,
                        child: LinearPercentIndicator(
                          width: size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 0.3,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: wizardOrange,
                        ),
                      ),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'First Name',
                              style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: wizardGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: wizardGreen),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.03,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Last Name',
                              style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: wizardGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: wizardGreen),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.03,
                      ),
                      Container(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Phone Number',
                              style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                              cursorColor: wizardGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: wizardGreen),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: size.height * 0.06,
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            personalinfo2Page()));
                              },
                            )),
                        width: size.width,
                        height: size.height * 0.1,
                      ),
                    ],
                  ))
              ),

          //Region support
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
                  ))
              ),
        ],
      ),
    );
  }
}
