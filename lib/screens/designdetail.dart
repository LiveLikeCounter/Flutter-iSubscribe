import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_isubscribe/core/util.dart';

class DesignDetail extends StatelessWidget {
  static const routeName = '/designdetail';
  const DesignDetail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        actionsForegroundColor: Colors.black,
        backgroundColor: Colors.white,
        middle: Text('Published in Verve'),
        trailing: Icon(Icons.format_size),
      ),
      child: Container(
        margin: EdgeInsets.only(left: 30, top: 30, right: 30),
        child: ListView(
          children: <Widget>[
            Text(
              'The Art of creating Scandinavian Interiors',
              style: TextStyle(fontSize: 50),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  '- Alexandra Zues',
                  style: TextStyle(color: CustomColors.GreyText),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'September 25, 2018',
                  style: TextStyle(color: CustomColors.GreyText),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 125,
                    height: 40,
                    margin: EdgeInsets.only(right: 20),
                    alignment: Alignment.center,
                    child: Text(
                      'Architecture',
                      style: TextStyle(color: CustomColors.GreyText),
                    ),
                    decoration: BoxDecoration(
                      color: CustomColors.GreyTextLightExtra,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.center,
                    child: Text(
                      'Interior',
                      style: TextStyle(color: CustomColors.GreyText),
                    ),
                    decoration: BoxDecoration(
                      color: CustomColors.GreyTextLightExtra,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 18,
                        ),
                        Text(
                          'Add tag',
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: CustomColors.GreyTextLight,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Lorem ipsum dolor sit amet, has enim adolescens intellegam no, no nibh repudiandae sed. Et sumo tritani periculis his, cu invenire similique vim, commodo fierent vituperatoribus eam ex. Mundi apeirian his an, eos ei graece impedit habemus. Sed ne sonet eruditi. Pri veri ubique at, doctus inermis menandri an mea. Quo ea agam lucilius aliquando, denique convenire elaboraret cu quo.',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25),
              child: Image.asset('assets/images/designdetail-page.png'),
            )
          ],
        ),
      ),
    );
  }
}
