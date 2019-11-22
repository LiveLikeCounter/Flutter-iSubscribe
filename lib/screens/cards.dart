import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

class Cards extends StatelessWidget {
  static const routeName = '/cards';
  const Cards({Key key}) : super(key: key);

  Widget _paymentCard(
      String cardType,
      String creditCardNumber,
      int subscriptions,
      Color startColor,
      Color endColor,
      String backgroundImage) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(left: 30, top: 30, right: 30),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 1],
          colors: [
            startColor,
            endColor,
          ],
        ),
        image: DecorationImage(
          image: ExactAssetImage('assets/images/$backgroundImage.png'),
          fit: BoxFit.scaleDown,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.0,
            spreadRadius: 2.0,
            offset: Offset(0.0, 3.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: 50,
                child: cardType == 'mastercard'
                    ? Image.asset('assets/images/logo-mastercard.png')
                    : Image.asset('assets/images/logo-visa.png'),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Subscriptions',
                    style: CustomTextStyles.White16,
                  ),
                  Container(
                    height: 22,
                    width: 22,
                    margin: EdgeInsets.only(left: 10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Text(
                      subscriptions.toString(),
                      style: CustomTextStyles.SubscriptionNumber,
                    ),
                  )
                ],
              ),
            ],
          ),
          Text(
            creditCardNumber,
            style: CustomTextStyles.CardNumber,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Card holder',
                    style: CustomTextStyles.CardHolder,
                  ),
                  Text(
                    'Jennyy Parker',
                    style: CustomTextStyles.CardName,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Expiry',
                    style: CustomTextStyles.CardHolder,
                  ),
                  Text(
                    '09 / 20',
                    style: CustomTextStyles.CardName,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CustomColors.BackgroundColor,
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: Colors.white,
            actionsForegroundColor: CustomColors.BlueIcon,
            largeTitle: Text('My Cards'),
            trailing: Icon(CustomIcons.addIcon),
            previousPageTitle: 'Dashboard',
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _paymentCard(
                    'visa',
                    '2564 3008 4589 8790',
                    1,
                    CustomColors.CardVisaPurple,
                    CustomColors.CardVisaIndigo,
                    'card_visa_purple_bubbles'),
                Container(
                  height: 80,
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: CustomColors.BlueLightBorder,
                        blurRadius: 2.0,
                        spreadRadius: 2.0,
                        offset: Offset(0.0, 3.0),
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/logo-spotify-with-text.png'),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Rs. 800',
                            style: CustomTextStyles.Bold14,
                          ),
                          Text(
                            '01 June 2019',
                            style: TextStyle(
                              fontSize: 14,
                              letterSpacing: 0.3,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 500,
                  margin: EdgeInsets.only(bottom: 50),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 10,
                        child: _paymentCard(
                            'mastercard',
                            '2444 3324 458 58000',
                            4,
                            CustomColors.CardMastercardGrey,
                            CustomColors.CardMastercardBlack,
                            'transparent'),
                      ),
                      Positioned(
                        top: 70,
                        child: _paymentCard(
                            'visa',
                            '2444 3324 458 58000',
                            2,
                            CustomColors.CardVisaPurple2,
                            CustomColors.CardVisaPurple3,
                            'transparent'),
                      ),
                      Positioned(
                        top: 130,
                        child: _paymentCard(
                            'mastercard',
                            '2444 3324 458 58000',
                            1,
                            CustomColors.CardBlueLight,
                            CustomColors.CardBlueDark,
                            'card_mastercard_starts'),
                      )
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
