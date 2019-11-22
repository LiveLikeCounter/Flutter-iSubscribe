import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

class Email extends StatelessWidget {
  static const routeName = '/email';
  const Email({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.white,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.white,
            actionsForegroundColor: CustomColors.BlueIcon,
            largeTitle: Text('Add Email'),
            trailing: FlatButton(
              child: Text(
                'Edit',
                style: TextStyle(color: CustomColors.BlueIcon, fontSize: 16),
              ),
              color: Colors.white,
              onPressed: () {},
            ),
            previousPageTitle: 'Dashboard',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  child: Center(
                    child: Text(
                      'Select accounts to view subscriptions',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          fontSize: 18,
                          letterSpacing: 1),
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/email-screen-thumb-1.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Jenny Parker',
                            style: TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'jennyparker@outlook.com',
                            style: CustomTextStyles.Grey16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  padding: EdgeInsets.only(left: 50),
                  decoration: BoxDecoration(
                    color: CustomColors.Purple02,
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/email-screen-thumb-2.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Jenny Parker',
                            style: CustomTextStyles.Purple16,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'geeky_jenny@gmail.com',
                            style: CustomTextStyles.Purple16
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 8,
                      ),
                      Image.asset(
                        'assets/images/icon-checkmark-green.png',
                        width: 22,
                        height: 22,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 90,
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.black12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Image.asset(
                        'assets/images/email-screen-thumb-3.png',
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Iam_Jenny',
                            style: TextStyle(fontSize: 16, letterSpacing: 1),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'jennyparker@yahoo.com',
                            style: CustomTextStyles.Grey16,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 90, top: 60, right: 90, bottom: 10),
                  child: CupertinoButton(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: CustomColors.Purple,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(CustomIcons.addIcon),
                        Text('Add Email')
                      ],
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
