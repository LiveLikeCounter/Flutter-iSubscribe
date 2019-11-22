import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/signin.dart';
import 'screens/signup.dart';
import 'screens/dashboard.dart';
import 'screens/cards.dart';
import 'screens/email.dart';
import 'screens/onboarding.dart';
import 'screens/renew.dart';
import 'screens/designlist.dart';
import 'screens/designdetail.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData(primaryColor: Colors.black
            // textStyle: TextStyle(fontFamily: 'Nunitosans'),
            // textStyle: TextStyle(fontWeight: FontWeight.w700),
            ),
      ),
      initialRoute: '/onboarding',
      routes: {
        '/': (ctx) => Onboarding(),
        Onboarding.routeName: (ctx) => Onboarding(),
        SignIn.routeName: (ctx) => SignIn(),
        SignUp.routeName: (ctx) => SignUp(),
        Dashboard.routeName: (ctx) => Dashboard(),
        Cards.routeName: (ctx) => Cards(),
        Email.routeName: (ctx) => Email(),
        Renew.routeName: (ctx) => Renew(),
        DesignList.routeName: (ctx) => DesignList(),
        DesignDetail.routeName: (ctx) => DesignDetail(),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
        print(settings.name);
        return;
      },
      onUnknownRoute: (settings) {
        print(settings.arguments);
        return CupertinoPageRoute(builder: (context) => SignUp());
      },
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
    );
  }
}
