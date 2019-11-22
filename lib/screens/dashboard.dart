import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';
import '../screens/cards.dart';
import '../screens/email.dart';
import '../screens/renew.dart';
import '../screens/designlist.dart';

Widget _purpleContainter(
    context, String image, String text, String routerName) {
  return GestureDetector(
    onTap: () {
      if (routerName == 'cards') {
        /// Navigator.of(context).pushNamed('/cards'); /// This is the ideal way, but it isn't working :(
        /// https://github.com/flutter/flutter/issues/15088
        /// https://github.com/flutter/flutter/blob/master/examples/flutter_gallery/lib/demo/cupertino/cupertino_navigation_demo.dart
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Cards(),
          ),
        );
      } else if (routerName == 'accounts') {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Email(),
          ),
        );
      } else if (routerName == 'designlist') {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => DesignList(),
          ),
        );
      } else {
        return;
      }
    },
    child: Container(
      margin: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[Image.asset('assets/images/$image.png'), Text(text)],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.BlueLightBorder,
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
    ),
  );
}

Widget _paidContainter(context, String logo, String text, int duration) {
  return GestureDetector(
    onTap: () {
      if (text == 'Netflix') {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => Renew(),
          ),
        );
      } else {
        return;
      }
    },
    child: Container(
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset('assets/images/$logo.png'),
          ),
          Container(height: 1, color: CustomColors.BlueLightBorder),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            '$duration days',
            style: TextStyle(
                color: duration <= 5 ? CustomColors.Purple : Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: CustomColors.BlueLightBorder,
            blurRadius: 5.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 0.0),
          ),
        ],
      ),
    ),
  );
}

class Dashboard extends StatefulWidget {
  static const routeName = '/dashboard';
  Dashboard({Key key}) : super(key: key);

  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      controller: CupertinoTabController(initialIndex: 1),
      tabBar: CupertinoTabBar(
        backgroundColor: Colors.white,
        activeColor: CustomColors.Purple,
        iconSize: 25,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Dashboard'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Subscriptions'),
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return ProfileTab();
              },
            );
          case 1:
            return CupertinoTabView(
              builder: (context) {
                return DashboardTab();
              },
            );
          case 2:
            return CupertinoTabView(
              builder: (context) {
                return SubscriptionsTab();
              },
            );
        }
      },
    );
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CustomColors.BackgroundColor,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Profile'),
            backgroundColor: Colors.white,
          ),
          SliverFillRemaining(
            child: Center(
              child: Text(
                'Not implemented yet.',
                style: CustomTextStyles.LargePurpleLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DashboardTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CustomColors.BackgroundColor,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Dashboard'),
            backgroundColor: Colors.white,
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              _purpleContainter(
                  context, 'SubscriptionOverview', 'Subscription Overview', ''),
              _purpleContainter(context, 'MyExpenses', 'My Expenses', ''),
              _purpleContainter(
                  context, 'PaymentCards', 'Payment Cards', 'cards'),
              _purpleContainter(
                  context, 'AddAccounts', 'Add Accounts', 'accounts'),
              _purpleContainter(context, 'Notifications', 'Notifications', ''),
              _purpleContainter(context, 'Promotions', 'Promotions', ''),
              _purpleContainter(context, 'star', 'Saved Items', ''),
              _purpleContainter(context, 'time-call', 'Help and Support', ''),
            ],
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
        ],
      ),
    );
  }
}

class SubscriptionsTab extends StatefulWidget {
  @override
  _SubscriptionsTabState createState() => _SubscriptionsTabState();
}

class _SubscriptionsTabState extends State<SubscriptionsTab> {
  int sharedValue = 2;
  final Map<int, Widget> options = const <int, Widget>{
    0: Text('Paid'),
    1: Text('Trail'),
    2: Text('Free'),
  };

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CustomColors.BackgroundColor,
      resizeToAvoidBottomInset: true,
      navigationBar: CupertinoNavigationBar(
        actionsForegroundColor: CustomColors.Purple,
        backgroundColor: Colors.white,
        middle: Text('Subscriptions'),
        trailing: Icon(CustomIcons.searchIcon),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 46,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: CustomColors.GreyTextLight,
                  blurRadius: 10.0,
                  spreadRadius: 5.0,
                  offset: Offset(0.0, 0.0),
                ),
              ],
            ),
            child: CupertinoSegmentedControl(
              children: options,
              onValueChanged: (int newValue) {
                setState(() {
                  sharedValue = newValue;
                });
              },
              groupValue: sharedValue,
              borderColor: CustomColors.Purple,
              pressedColor: CustomColors.PurpleLight,
              selectedColor: CustomColors.Purple,
              unselectedColor: Colors.white,
            ),
          ),
          Visibility(
            visible: sharedValue == 0 ? true : false,
            child: Expanded(
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverGrid.count(
                    crossAxisCount: 2,
                    children: [
                      _paidContainter(context, 'logo-spotify', 'Spotify', 2),
                      _paidContainter(context, 'logo-netflix', 'Netflix', 2),
                      _paidContainter(context, 'logo-sketch', 'Sketch', 5),
                      _paidContainter(context, 'logo-iTunes', 'iTunes', 5),
                      _paidContainter(context, 'logo-avocode', 'Avocode', 10),
                      _paidContainter(
                          context, 'logo-creativecc', 'Adobe CC', 10),
                      _paidContainter(context, 'logo-invision', 'Invision', 30),
                      _paidContainter(
                          context, 'logo-creativecc', 'XBOX One', 20),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: sharedValue == 1 ? true : false,
            child: Expanded(
              child: Center(
                child: Text(
                  'Not implemented yet.',
                  style: CustomTextStyles.LargePurpleLight,
                ),
              ),
            ),
          ),
          Visibility(
            visible: sharedValue == 2 ? true : false,
            child: Expanded(
              child: CustomScrollView(
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverGrid.count(
                    crossAxisCount: 2,
                    children: [
                      _purpleContainter(context, 'Suitcase', 'Business', ''),
                      _purpleContainter(context, 'Books', 'Books', ''),
                      _purpleContainter(context, 'Beauty', 'Beauty', ''),
                      _purpleContainter(context, 'Education', 'Education', ''),
                      _purpleContainter(context, 'Design', 'Design', 'designlist'),
                      _purpleContainter(
                          context, 'Entertainment', 'Entertainment', ''),
                      _purpleContainter(context, 'Fitness', 'Fitness', ''),
                      _purpleContainter(context, 'Finance', 'Finance', ''),
                    ],
                  ),
                  SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
