import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';
import '../screens/designdetail.dart';

class DesignList extends StatelessWidget {
  static const routeName = '/designlist';
  const DesignList({Key key}) : super(key: key);

  _navigateToDesignDetail(context) {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (context) => DesignDetail(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.white,
            actionsForegroundColor: CustomColors.BlueIcon,
            border: null,
            largeTitle: Text('Designs'),
            previousPageTitle: 'Subscriptions',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  padding: EdgeInsets.only(left: 50, top: 20),
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        'My List',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Recommanded',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.GreyText),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        'Archived',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.GreyText),
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(left: 30, top: 0, right: 30),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.GreyTextLight,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-1.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'How Much Interface Is Enough Interface?',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'medium.com',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.GreyTextLight,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-2.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'The Future of Design is Collaborative',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'behance.com',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.Purple,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-3.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'How to Live With Your Mistakes',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'medium.com',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.GreyTextLight,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-4.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'The Art of Great Interiors around',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'verve.in',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.GreyTextLight,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-5.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Why do all Coffee shops Look Alike?',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'medium.com',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _navigateToDesignDetail(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 20),
                          child: Row(
                            children: <Widget>[
                              Image.asset(
                                'assets/images/icon-star-empty.png',
                                color: CustomColors.GreyTextLight,
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                'assets/images/designlist-6.png',
                                width: 150,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 100,
                                width: 150,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Thoughts on Olympic Skateboarding',
                                      style: CustomTextStyles.SemiBold18,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'medium.com',
                                      style: CustomTextStyles.GreyText16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
