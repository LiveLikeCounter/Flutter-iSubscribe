import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

class Renew extends StatelessWidget {
  static const routeName = '/renew';
  const Renew({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.white,
            actionsForegroundColor: CustomColors.BlueIcon,
            largeTitle: Text('Netflix'),
            previousPageTitle: 'Subscriptions',
            border: null,
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 120,
                        width: 120,
                        margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: Image.asset('assets/images/logo-netflix.png'),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Netflix',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 1.5),
                          ),
                          Text(
                            'iamjohny@gmail.com',
                            style: TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          SizedBox(height: 5),
                          Row(
                            /// > mainAxisAlignment: MainAxisAlignment.spaceBetween, > doesn't seem to work
                            children: <Widget>[
                              Text(
                                'Start',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: CustomColors.GreyText,
                                    letterSpacing: 1),
                              ),
                              Text(
                                '01 January 2019',
                                style:
                                    TextStyle(fontSize: 16, letterSpacing: 1),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Expiry',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: CustomColors.GreyText,
                                    letterSpacing: 1),
                              ),
                              Text(
                                '31 January 2019',
                                style:
                                    TextStyle(fontSize: 16, letterSpacing: 1),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Paid',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: CustomColors.GreenText,
                                letterSpacing: 1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            '3.9',
                            style: TextStyle(
                                fontSize: 28, color: CustomColors.Purple),
                          ),
                          SizedBox(width: 5),
                          Image.asset(CustomImages.starFilled,
                              width: 20, height: 20),
                          Image.asset(CustomImages.starFilled,
                              width: 20, height: 20),
                          Image.asset(CustomImages.starFilled,
                              width: 20, height: 20),
                          Image.asset(CustomImages.starFilled,
                              width: 20, height: 20),
                          Image.asset(
                            CustomImages.starEmpty,
                            width: 20,
                            height: 20,
                            color: CustomColors.GreyTextLight,
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            'No',
                            style: TextStyle(color: CustomColors.GreyText),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '3',
                            style: TextStyle(color: CustomColors.Purple),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            '4.1K',
                            style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Ratings',
                            style: TextStyle(
                                fontSize: 12, color: CustomColors.GreyText),
                          )
                        ],
                      ),
                      Text(
                        'Entertainment',
                        style: TextStyle(
                            fontSize: 12, color: CustomColors.GreyText),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  color: CustomColors.GreyTextLight,
                ),
                Container(
                  height: 220,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Membership'),
                      SizedBox(height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Ongoing Plan',
                            style: TextStyle(
                                color: CustomColors.GreyText, fontSize: 20),
                          ),
                          Text(
                            '2 screens + HD',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Yearly',
                            style: TextStyle(
                                color: CustomColors.GreyText, fontSize: 20),
                          ),
                          Text(
                            'Rs. 4999/month',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Monthly',
                            style: TextStyle(
                                color: CustomColors.GreyText, fontSize: 20),
                          ),
                          Text(
                            'Rs. 416/month',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Next Billing',
                            style: TextStyle(
                                color: CustomColors.GreyText, fontSize: 20),
                          ),
                          Text(
                            '01/01/2020',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Days Remaining',
                            style: TextStyle(
                                color: CustomColors.GreyText, fontSize: 20),
                          ),
                          Text(
                            '03',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: CupertinoButton(
                    onPressed: () {},
                    color: CustomColors.Purple,
                    child: Text(
                      'RENEW',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: (MediaQuery.of(context).size.width - 60) / 2.1,
                        height: 45,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text('UNMANAGE'),
                          color: CustomColors.GreyText,
                          textColor: CustomColors.GreyText,
                        ),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 60) / 2.1,
                        height: 45,
                        child: OutlineButton(
                          onPressed: () {},
                          child: Text('UNSUBSCRIBE'),
                          color: CustomColors.GreyText,
                          textColor: CustomColors.GreyText,
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
