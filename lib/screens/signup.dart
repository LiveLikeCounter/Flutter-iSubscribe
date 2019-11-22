import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/signup';
  const SignUp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('SIGN UP'),
        backgroundColor: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: <Widget>[
                    Image.asset('assets/images/UserPhoto.png'),
                    Container(
                      width: 30,
                      height: 30,
                      child: Icon(CustomIcons.addIcon, color: Colors.white),
                      decoration: const BoxDecoration(
                        color: CustomColors.Purple,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Material(
                color: Colors.transparent,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: 'Jenny Parker',
                      decoration: InputDecoration(
                        labelText: 'FULL NAME',
                        labelStyle:
                            TextStyle(color: CustomColors.GreyTextLight),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: '+91 1234567899',
                      decoration: InputDecoration(
                        labelText: 'MOBILE',
                        labelStyle:
                            TextStyle(color: CustomColors.GreyTextLight),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: 'your@email.com',
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle:
                            TextStyle(color: CustomColors.GreyTextLight),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: '12345678',
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle:
                            TextStyle(color: CustomColors.GreyTextLight),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                      ),
                    ),
                    TextFormField(
                      initialValue: '12345678',
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'CONFIRM PASSWORD',
                        labelStyle:
                            TextStyle(color: CustomColors.GreyTextLight),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: CustomColors.GreyTextLight),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(top: 35, bottom: 10),
                      child: CupertinoButton(
                        child:
                            Text('CREATE', style: CustomTextStyles.ButtonText),
                        color: CustomColors.Purple,
                        onPressed: () {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Already a member?'),
                        CupertinoButton(
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(
                                fontSize: 16, color: CustomColors.Purple),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/signin', (Route<dynamic> route) => false);
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
