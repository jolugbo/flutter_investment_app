import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wealth_wizard/UI/welcome_packs/personalinfo3.dart';
import 'package:wealth_wizard/constants/app_images.dart';
import 'package:wealth_wizard/utills/imageanimations.dart';
import 'package:wealth_wizard/utills/styles.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class personalinfo2Page extends StatefulWidget {
  personalinfo2Page();

  @override
  _Personalinfo2PageState createState() => _Personalinfo2PageState();
}

class _Personalinfo2PageState extends State<personalinfo2Page>
    with TickerProviderStateMixin {
  String bgMain1 = AppImages.leafBG;
  String leafIcon = AppImages.leaficon;
  String bgMain = AppImages.purplebg;
  String nestIcon = AppImages.nestIcon;
  String houseIcon = AppImages.houseIcon;
  String _date = 'yyyy/mm/dd';
  String? _currentSelectedItem = 'Lagos';
  DateTime dateSelected = DateTime.now();
  String _PlaceofBirthSelected = 'Lagos';
  String _StateofOriginSelected = 'Lagos';
  final TextEditingController _addressController = new TextEditingController();
  FocusNode _dateOfBirthNode = new FocusNode();
  FocusNode _placeOfOriginNode = new FocusNode();
  FocusNode _addressNode = new FocusNode();

  //validators
  bool dateOfBirthIsValid = false;

  @override
  void initState() {
    super.initState();
    //WidgetsBinding.instance.addPostFrameCallback((_) => doMotion());
  }

  @override
  Widget build(BuildContext context) {
    var parser = EmojiParser();
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          //Region background animation
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

          //Region Personal Information form
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
                        child: LinearPercentIndicator(
                          width: size.width - 50,
                          animation: true,
                          lineHeight: 10.0,
                          animationDuration: 2500,
                          percent: 0.6,
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: wizardOrange,
                        ),
                      ),
                      Container(
                        height: size.height * 0.04,
                      ),
                      Container(
                        height: size.height * 0.04,
                        child: Text(
                          'Date of Birth',
                          style: purple14Style,
                        ),
                      ),
                      Container(
                        height: size.height * 0.05,
                        width: size.width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: buttonShape, // Button shape
                            backgroundColor: accent, // Button color
                          ),
                          onPressed: () async {
                            DateTime? pickedDate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000, 1, 1),
                              lastDate: DateTime(2032, 12, 31),
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
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: size.height * 0.06,
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
                              hint: Text(
                                'Select State',
                                textAlign: TextAlign.right,
                              ),
                              underline: Container(
                                height: 1.2,
                                color: wizardDark,
                              ),
                              items: [
                                DropdownMenuItem(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Text("Lagos"),
                                    ),
                                    value: 'Lagos'),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Imo"),
                                  ),
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
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Text("Abuja"),
                                    ),
                                    value: 'Abuja')
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
                              child: Image(
                                image: AssetImage(nestIcon),
                              )),
                        ],
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
                              'Current Home Address',
                              style: purple14Style,
                            ),
                            TextField(
                              textAlignVertical: TextAlignVertical.bottom,
                              textAlign: TextAlign.left,
                              maxLines: 1,
                              style: TextStyle(
                                  //fontSize: 13,
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
                        height: size.height * 0.04,
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
                              hint: Text(
                                'Select State',
                                textAlign: TextAlign.right,
                              ),
                              underline: Container(
                                height: 1.2,
                                color: wizardDark,
                              ),
                              items: [
                                DropdownMenuItem(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Text("Lagos"),
                                    ),
                                    value: 'Lagos'),
                                DropdownMenuItem(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: Text("Imo"),
                                  ),
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
                                      padding:
                                          const EdgeInsets.only(left: 30.0),
                                      child: Text("Abuja"),
                                    ),
                                    value: 'Abuja')
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
                              child: Image(
                                image: AssetImage(houseIcon),
                              )),
                        ],
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
                                      builder: (context) => personalinfo3Page()));
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
