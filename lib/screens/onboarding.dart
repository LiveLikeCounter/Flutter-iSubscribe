import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

/// Idea from:
/// https://medium.com/aubergine-solutions/create-an-onboarding-page-indicator-in-3-minutes-in-flutter-a2bd97ceeaff

class Onboarding extends StatefulWidget {
  static const routeName = '/onboarding';
  Onboarding({Key key}) : super(key: key);
  var currentPageValue = 2;

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  void initState() {
    getChangedPageAndMoveBar(0);
    super.initState();
  }

  void getChangedPageAndMoveBar(int page) {
    setState(() {
      widget.currentPageValue = page;
    });
  }

  Widget circleBar(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4),
      height: 4,
      width: isActive ? 30 : 20,
      decoration: BoxDecoration(
        color: isActive ? CustomColors.Purple : CustomColors.PurpleLight,
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> introWidgetsList = <Widget>[
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/Onboarding - 1.png'),
            SizedBox(
              height: 30,
            ),
            Text(
              'Easy access to all your subscriptions in one place',
              textAlign: TextAlign.center,
              style: CustomTextStyles.OnBoarding,
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/Onboarding - 2.png'),
            Text(
              'Add email accounts for easy sync and access of all subscriptions',
              textAlign: TextAlign.center,
              style: CustomTextStyles.OnBoarding,
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 200,
            ),
            Image.asset('assets/images/Onboarding - 3.png'),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Text(
                'Renew your subscriptions with paybacks and discounts',
                textAlign: TextAlign.center,
                style: CustomTextStyles.OnBoarding,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              child: CupertinoButton(
                child: Text(
                  'GET STARTED',
                  style: CustomTextStyles.ButtonText,
                ),
                color: CustomColors.Purple,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil('/signup', (Route<dynamic> route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    ];

    return CupertinoPageScaffold(
      child: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.topCenter,
          children: <Widget>[
            PageView.builder(
              physics: ClampingScrollPhysics(),
              onPageChanged: (int page) {
                getChangedPageAndMoveBar(page);
              },
              itemBuilder: (context, index) {
                return introWidgetsList[index];
              },
              itemCount: introWidgetsList.length,
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  height: 50,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Visibility(
                        visible: widget.currentPageValue !=
                                introWidgetsList.length - 1
                            ? true
                            : false,
                        child: Container(
                          width: 75,
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          for (int i = 0; i < introWidgetsList.length; i++)
                            if (i == widget.currentPageValue) ...[
                              circleBar(true)
                            ] else
                              circleBar(false),
                        ],
                      ),
                      Visibility(
                        visible: widget.currentPageValue !=
                                introWidgetsList.length - 1
                            ? true
                            : false,
                        child: Container(
                          width: 75,
                          child: CupertinoButton(
                            child: Text(
                              'Skip',
                              style: TextStyle(
                                  color: CustomColors.PurpleLightText),
                            ),
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil('/signup', (Route<dynamic> route) => false);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
