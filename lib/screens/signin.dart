import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../core/util.dart';

class SignIn extends StatelessWidget {
  static const routeName = '/signin';
  const SignIn({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('SIGN IN'),
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
                      initialValue: 'your@email.com',
                      decoration: InputDecoration(
                        labelText: 'EMAIL OR MOBILE',
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
                        suffixText: 'FORGOT PASSWORD',
                        suffixStyle: TextStyle(
                            fontSize: 12, color: CustomColors.GreyTextLight),
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
                            Text('SIGN IN', style: CustomTextStyles.ButtonText),
                        color: CustomColors.Purple,
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              '/dashboard', (Route<dynamic> route) => false);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Not a member?'),
                        CupertinoButton(
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(
                                fontSize: 16, color: CustomColors.Purple),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                '/signup', (Route<dynamic> route) => false);
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
