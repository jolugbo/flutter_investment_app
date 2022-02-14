import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class personalinfo2Page extends StatefulWidget {
  personalinfo2Page({Key key, this.title}) : super(key: key);

  final String title;


  @override
  _Personalinfo2PageState createState() => _Personalinfo2PageState();
}

class _Personalinfo2PageState extends State<personalinfo2Page>
    with TickerProviderStateMixin {
  String leafIcon = 'assets/leaficon.png';
  String nestIcon = 'assets/nest.png';
  String houseIcon = 'assets/house.png';
  String bgMain = 'assets/purplebg.png';
  String _date = 'yyyy/mm/dd';
  String _currentSelectedItem = 'Lagos';

  @override
  State<StatefulWidget> initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
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
                                time: Duration(seconds: 3),beginx:0.0 ,endx: -0, beginy: 0 ,endy: -0.0,
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
                        child: LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 0.6,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: paydayOrange,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                        child:
                        Text('Date of Birth',style: purple14Style,),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        width: MediaQuery.of(context).size.width,
                        child:RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          elevation: 4.0,
                          onPressed: () {
                            DatePicker.showDatePicker(context,
                                theme: DatePickerTheme(
                                  containerHeight: 210.0,
                                ),
                                showTitleActions: true,
                                minTime: DateTime(2000, 1, 1),
                                maxTime: DateTime(2022, 12, 31), onConfirm: (date) {
                                  print('confirm $date');
                                  _date = '${date.year} - ${date.month} - ${date.day}';
                                  setState(() {});
                                }, currentTime: DateTime.now(), locale: LocaleType.en);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.date_range,
                                            size: 18.0,
                                            color: paydayPurple,
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
//                                Text(
//                                  "  Change",
//                                  style: purpleThickStyle
//                                ),
                              ],
                            ),
                          ),
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
                      ),
                      Text(
                        'Place of Birth ',
                        style: purple14Style,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              elevation: 15,
                              value: _currentSelectedItem,
                              hint: Text('Select State',textAlign: TextAlign.right,),
                              underline: Container(
                                height: 1.2,
                                color: paydayDark,
                              ),
                              items: [
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Lagos"),
                                  ),
                                  value: 'Lagos'
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Imo"),),
                                  value: "Imo",
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Edo"),
                                  ),
                                  value: "Edo",
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30.0),
                                      child: Text("Abuja"),
                                    ),
                                    value: 'Abuja'
                                )
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _currentSelectedItem = value;
                                });
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 15.0, left: 2.0),
                              child: Image(image: AssetImage(nestIcon),)
                          ),
                        ],
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
                              'Current Home Address',style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                //fontSize: 13,
                              ),
                              cursorColor: paydayGreen,
                              decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: paydayGreen),),
                              ),),
                          ],
                        ),
                      ),

                      Container(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      Text(
                        'State of Origin',
                        style: purple14Style,
                      ),
                      Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                            ),
                            child: DropdownButton(
                              isExpanded: true,
                              elevation: 15,
                              value: _currentSelectedItem,
                              hint: Text('Select State',textAlign: TextAlign.right,),
                              underline: Container(
                                height: 1.2,
                                color: paydayDark,
                              ),
                              items: [
                                DropdownMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30.0),
                                      child: Text("Lagos"),
                                    ),
                                    value: 'Lagos'
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Imo"),),
                                  value: "Imo",
                                ),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Edo"),
                                  ),
                                  value: "Edo",
                                ),
                                DropdownMenuItem(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 30.0),
                                      child: Text("Abuja"),
                                    ),
                                    value: 'Abuja'
                                )
                              ],
                              onChanged: (value) {
                                setState(() {
                                  _currentSelectedItem = value;
                                });
                              },
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 15.0, left: 2.0),
                              child: Image(image: AssetImage(houseIcon),)
                          ),
                        ],
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
                                    context, '/personalinfo3');
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
