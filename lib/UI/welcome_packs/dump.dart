import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:payday_investor/utills/imageanimations.dart';
import 'package:payday_investor/utills/styles.dart';



class testPage extends StatefulWidget {
  testPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expandable Demo"),
      ),
      body: ExpandableTheme(
        data:
        const ExpandableThemeData(
          iconColor: Colors.blue,
          useInkWell: true,
        ),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: <Widget>[
            Card4(),
            Card1(),
            Card2(),
            Card3(),
          ],
        ),
      ),
    );
  }
}

const loremIpsum =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

class Card1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          "ExpandablePanel",
                          //style: Theme.of(context).textTheme.body2,
                        )),
                    collapsed: Text(
                      loremIpsum,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    expanded: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        for (var _ in Iterable.generate(5))
                          Padding(
                              padding: EdgeInsets.only(bottom: 10),
                              child: Text(
                                loremIpsum,
                                softWrap: true,
                                overflow: TextOverflow.fade,
                              )),
                      ],
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildImg(Color color, double height) {
      return SizedBox(
          height: height,
          child: Container(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.rectangle,
            ),
          ));
    }

    buildCollapsed1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Expandable",
                    //style: Theme.of(context).textTheme.body1,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildCollapsed2() {
      return buildImg(Colors.lightGreenAccent, 150);
    }

    buildCollapsed3() {
      return Container();
    }

    buildExpanded1() {
      return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Expandable",
                    //style: Theme.of(context).textTheme.body1,
                  ),
                  Text(
                    "3 Expandable widgets",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ],
              ),
            ),
          ]);
    }

    buildExpanded2() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(child: buildImg(Colors.lightGreenAccent, 100)),
              Expanded(child: buildImg(Colors.orange, 100)),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(child: buildImg(Colors.lightBlue, 100)),
              Expanded(child: buildImg(Colors.cyan, 100)),
            ],
          ),
        ],
      );
    }

    buildExpanded3() {
      return Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              loremIpsum,
              softWrap: true,
            ),
          ],
        ),
      );
    }

    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ScrollOnExpand(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expandable(
                    collapsed: buildCollapsed1(),
                    expanded: buildExpanded1(),
                  ),
                  Expandable(
                    collapsed: buildCollapsed2(),
                    expanded: buildExpanded2(),
                  ),
                  Expandable(
                    collapsed: buildCollapsed3(),
                    expanded: buildExpanded3(),
                  ),
                  Divider(
                    height: 1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Builder(
                        builder: (context) {
                          var controller = ExpandableController.of(context);
                          return FlatButton(
                            child: Text(
                              controller.expanded ? "COLLAPSE" : "EXPAND",
                              style: Theme.of(context)
                                  .textTheme
                                  .button
                                  .copyWith(color: Colors.deepPurple),
                            ),
                            onPressed: () {
                              controller.toggle();
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

class Card4 extends StatelessWidget{
  String debitCardIcon = 'assets/debitcardicon.png';
  String transferIcon = 'assets/transfericon.png';
  String bankIcon = 'assets/bank.png';
  String paystackIcon = 'assets/paystack.png';
  String flutterwaveIcon = 'assets/flutterwave.png';
  bool showCardForms = true;
  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            clipBehavior: Clip.antiAlias,color: paydayPurple2,
            child: Column(
              children: <Widget>[
                ScrollOnExpand(
                  scrollOnExpand: true,
                  scrollOnCollapse: false,
                  child: ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToCollapse: true,
                    ),
                    header: Container(
                        color: paydayPurple2,
                      child:Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          imgAnimation2(
                            url: debitCardIcon,
                            time: Duration(seconds: 5),
                            width:MediaQuery.of(context).size.width * 0.1,
                            beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:
                          MediaQuery.of(context).size.height * 0.07,
                            transition: PositionedTransition,
                          ),
                          Text('Debit card'),
                        ],),
                    ),
                    expanded:(showCardForms)?
                    Container(
                        color: accent,
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 0.15,
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            ButtonTheme(
                                minWidth:
                                MediaQuery.of(context).size.width *0.3,
                                height: MediaQuery.of(context).size.height * 0.1,
                                buttonColor: accent,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(color: paydayGreen)
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Pay with \nPaystack',style: purple12Style,textAlign: TextAlign.center,),
                                      imgAnimation2(
                                        url: paystackIcon,
                                        time: Duration(seconds: 5),
                                        width:MediaQuery.of(context).size.width * 0.2,
                                        beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
                                        transition: PositionedTransition,
                                      ),
                                    ],),
                                  onPressed: () => {

                                  },
                                  highlightElevation:20,
                                )),
                            ButtonTheme(
                                minWidth:
                                MediaQuery.of(context).size.width *0.3,
                                height: MediaQuery.of(context).size.height * 0.1,
                                buttonColor: accent,
                                child: RaisedButton(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(15)),
                                      side: BorderSide(color: paydayGreen)
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text('Pay with \nFlutterwave',style: purple12Style,textAlign: TextAlign.center,),
                                      imgAnimation2(
                                        url: flutterwaveIcon,
                                        time: Duration(seconds: 5),
                                        width:MediaQuery.of(context).size.width * 0.2,
                                        beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
                                        transition: PositionedTransition,
                                      ),
                                    ],),
                                  onPressed: () => {
                                  },
                                  highlightElevation: 0.8,
                                )),
                          ],
                        )
                    ):
                    Container(
                        color:accent, padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        child:Column(
                          children: <Widget>[
                            Text('Please enter your card details below',style:purple14Style,textAlign: TextAlign.center,),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                              color: paydayLightGray2,
                              padding: EdgeInsets.all(5),
                              margin: EdgeInsets.all(5),
                              width: MediaQuery.of(context).size.width * 0.75,
                              height: MediaQuery.of(context).size.height * 0.05,
                              child:TextField(
                                decoration: InputDecoration(labelText: 'Card number',labelStyle: gray12Style,enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: paydayGreen),),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: paydayGreen),
                                  ),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(color: paydayGreen),
                                  )),),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Container(
                                      color: paydayLightGray2,
                                      padding: EdgeInsets.all(5),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                      child:TextField(
                                        decoration: InputDecoration(labelText: 'Card expiry date',labelStyle: gray12Style,enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: paydayGreen),),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: paydayGreen),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: paydayGreen),
                                          )),),
                                    ),
                                    Container(
                                      color: paydayLightGray2,
                                      padding: EdgeInsets.all(5),
                                      height: MediaQuery.of(context).size.height * 0.05,
                                      width: MediaQuery.of(context).size.width * 0.33,
                                      child:TextField(
                                        decoration: InputDecoration(labelText: 'CVV / CVC',labelStyle: gray12Style,enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: paydayGreen),),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: paydayGreen),
                                          ),
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: paydayGreen),
                                          )),),
                                    ),
                                  ],
                                )
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                          ],
                        )
                    ),
                    builder: (_, collapsed, expanded) {
                      return Padding(
                        padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                        child: Expandable(
                          collapsed: collapsed,
                          expanded: expanded,
                          theme: const ExpandableThemeData(crossFadePoint: 0),
                        ),
                      );
                    },


                  ),
                ),

              ],
            ),
          ),
//          ScrollOnExpand(
//                       child: (showCardForms)?Container(
//          color:accent,
//          alignment: Alignment.center,
//          child:Column(
//            children: <Widget>[
//              Text('Please enter your card details below',style:purple14Style,textAlign: TextAlign.center,),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                color: paydayLightGray2,
//                child:TextField(decoration: InputDecoration(labelText: 'Card holder',labelStyle: gray12Style),),
//              ),Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                color: paydayLightGray2,
//                child:TextField(decoration: InputDecoration(labelText: 'Card number',labelStyle: gray12Style),),
//              ),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                  child:Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      Container(
//                        color: paydayLightGray2,
//                        width: MediaQuery.of(context).size.width * 0.33,
//                        child:TextField(decoration: InputDecoration(labelText: 'Card expiry date',labelStyle: gray12Style),),
//                      ),
//                      Container(
//                        color: paydayLightGray2,
//                        width: MediaQuery.of(context).size.width * 0.33,
//                        child:TextField(decoration: InputDecoration(labelText: 'CVV / CVC',labelStyle: gray12Style),),
//                      ),
//                    ],
//                  )
//              ),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//            ],
//          )
//      ):Container(
//          color: accent,
//          alignment: Alignment.center,
//          height: MediaQuery.of(context).size.height * 0.15,
//          child:Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            mainAxisSize: MainAxisSize.max,
//            children: <Widget>[
//              ButtonTheme(
//                  minWidth:
//                  MediaQuery.of(context).size.width *0.3,
//                  height: MediaQuery.of(context).size.height * 0.1,
//                  buttonColor: accent,
//                  child: OutlineButton(
//                    color: accent,
//                    child: Column(
//                      mainAxisSize: MainAxisSize.min,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text('Pay with \nPaystack',style: purple12Style,textAlign: TextAlign.center,),
//                        imgAnimation2(
//                          url: paystackIcon,
//                          time: Duration(seconds: 5),
//                          width:MediaQuery.of(context).size.width * 0.2,
//                          beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
//                          transition: PositionedTransition,
//                        ),
//                      ],),
//                    onPressed: () => {
//                      setState(() {
//                      })
//                    }, //callback when button is clicked
//                    borderSide: BorderSide(
//                      color: setUpGoalColor,
//                      style: BorderStyle.solid,
//                      width: 2,
//                    ),
//                    highlightElevation: 0.8,
//                  )),
//              ButtonTheme(
//                  minWidth:
//                  MediaQuery.of(context).size.width *0.3,
//                  height: MediaQuery.of(context).size.height * 0.1,
//                  buttonColor: accent,
//                  child: OutlineButton(
//                    color: accent,
//                    child: Column(
//                      mainAxisSize: MainAxisSize.min,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text('Pay with \nFlutterwave',style: purple12Style,textAlign: TextAlign.center,),
//                        imgAnimation2(
//                          url: flutterwaveIcon,
//                          time: Duration(seconds: 5),
//                          width:MediaQuery.of(context).size.width * 0.2,
//                          beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
//                          transition: PositionedTransition,
//                        ),
//                      ],),
//                    onPressed: () => {
//                      setState(() {
//                        showCardForms = true;
//                      })
//                    }, //callback when button is clicked
//                    borderSide: BorderSide(
//                      color: setUpGoalColor,
//                      style: BorderStyle.solid,
//                      width: 0.8,
//                    ),
//                    highlightElevation: 0.8,
//                  )),
//            ],
//          )
//      ),
//      header: OutlineButton(
//        child:Row(
//          mainAxisSize: MainAxisSize.max,
//          mainAxisAlignment: MainAxisAlignment.start,
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            imgAnimation2(
//              url: debitCardIcon,
//              time: Duration(seconds: 5),
//              width:MediaQuery.of(context).size.width * 0.1,
//              beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:
//            MediaQuery.of(context).size.height * 0.07,
//              transition: PositionedTransition,
//            ),
//            Text('Debit card'),
//          ],),
//        onPressed: (){
//          cardController.toggle();
//          transferController.expanded=false;
//          bankController.expanded=false;
//        },
//      ),
//      expanded: (showCardForms)?Container(
//          color:accent,
//          alignment: Alignment.center,
//          child:Column(
//            children: <Widget>[
//              Text('Please enter your card details below',style:purple14Style,textAlign: TextAlign.center,),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                color: paydayLightGray2,
//                child:TextField(decoration: InputDecoration(labelText: 'Card holder',labelStyle: gray12Style),),
//              ),Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                color: paydayLightGray2,
//                child:TextField(decoration: InputDecoration(labelText: 'Card number',labelStyle: gray12Style),),
//              ),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//              Container(
//                  child:Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                    children: <Widget>[
//                      Container(
//                        color: paydayLightGray2,
//                        width: MediaQuery.of(context).size.width * 0.33,
//                        child:TextField(decoration: InputDecoration(labelText: 'Card expiry date',labelStyle: gray12Style),),
//                      ),
//                      Container(
//                        color: paydayLightGray2,
//                        width: MediaQuery.of(context).size.width * 0.33,
//                        child:TextField(decoration: InputDecoration(labelText: 'CVV / CVC',labelStyle: gray12Style),),
//                      ),
//                    ],
//                  )
//              ),
//              Container(
//                height: MediaQuery.of(context).size.height * 0.02,
//              ),
//            ],
//          )
//      ):
//      Container(
//          color: accent,
//          alignment: Alignment.center,
//          height: MediaQuery.of(context).size.height * 0.15,
//          child:Row(
//            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//            mainAxisSize: MainAxisSize.max,
//            children: <Widget>[
//              ButtonTheme(
//                  minWidth:
//                  MediaQuery.of(context).size.width *0.3,
//                  height: MediaQuery.of(context).size.height * 0.1,
//                  buttonColor: accent,
//                  child: OutlineButton(
//                    color: accent,
//                    child: Column(
//                      mainAxisSize: MainAxisSize.min,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text('Pay with \nPaystack',style: purple12Style,textAlign: TextAlign.center,),
//                        imgAnimation2(
//                          url: paystackIcon,
//                          time: Duration(seconds: 5),
//                          width:MediaQuery.of(context).size.width * 0.2,
//                          beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
//                          transition: PositionedTransition,
//                        ),
//                      ],),
//                    onPressed: () => {
//                      setState(() {
//                      })
//                    }, //callback when button is clicked
//                    borderSide: BorderSide(
//                      color: setUpGoalColor,
//                      style: BorderStyle.solid,
//                      width: 2,
//                    ),
//                    highlightElevation: 0.8,
//                  )),
//              ButtonTheme(
//                  minWidth:
//                  MediaQuery.of(context).size.width *0.3,
//                  height: MediaQuery.of(context).size.height * 0.1,
//                  buttonColor: accent,
//                  child: OutlineButton(
//                    color: accent,
//                    child: Column(
//                      mainAxisSize: MainAxisSize.min,
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
//                      crossAxisAlignment: CrossAxisAlignment.center,
//                      children: <Widget>[
//                        Text('Pay with \nFlutterwave',style: purple12Style,textAlign: TextAlign.center,),
//                        imgAnimation2(
//                          url: flutterwaveIcon,
//                          time: Duration(seconds: 5),
//                          width:MediaQuery.of(context).size.width * 0.2,
//                          beginx: 0.03,endx: -0,beginy: 0,endy: -0.0,height:MediaQuery.of(context).size.height * 0.04,
//                          transition: PositionedTransition,
//                        ),
//                      ],),
//                    onPressed: () => {
//                      setState(() {
//                        showCardForms = true;
//                      })
//                    }, //callback when button is clicked
//                    borderSide: BorderSide(
//                      color: setUpGoalColor,
//                      style: BorderStyle.solid,
//                      width: 0.8,
//                    ),
//                    highlightElevation: 0.8,
//                  )),
//            ],
//          )
//      ),
//      controller: cardController,
//
//    ),

        ));
  }

}


class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    buildItem(String label) {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(label),
      );
    }

    buildList() {
      return Column(
        children: <Widget>[
          for (var i in [1, 2, 3, 4]) buildItem("Item ${i}"),
        ],
      );
    }

    return ExpandableNotifier(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: ScrollOnExpand(
            child: Card(
              clipBehavior: Clip.antiAlias,
              child: Column(
                children: <Widget>[
                  ExpandablePanel(
                    theme: const ExpandableThemeData(
                      headerAlignment: ExpandablePanelHeaderAlignment.center,
                      tapBodyToExpand: true,
                      tapBodyToCollapse: true,
                      hasIcon: false,
                    ),
                    header: Container(
                      color: Colors.indigoAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            ExpandableIcon(
                              theme: const ExpandableThemeData(
                                expandIcon: Icons.arrow_right,
                                collapseIcon: Icons.arrow_drop_down,
                                iconColor: Colors.white,
                                iconSize: 28.0,
                                iconRotationAngle: math.pi / 2,
                                iconPadding: EdgeInsets.only(right: 5),
                                hasIcon: false,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                "Items",
                                // style: Theme.of(context)
                                //     .textTheme
                                //     .body2
                                //     .copyWith(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    expanded: buildList(),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
