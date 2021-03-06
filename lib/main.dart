import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_login/constants/constants.dart';
import 'package:new_login/ui/Homescreen.dart';
import 'package:new_login/ui/SideMenu.dart';
import 'package:new_login/ui/signin.dart';
import 'package:new_login/ui/signup.dart';
import 'package:new_login/ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        SPLASH_SCREEN: (BuildContext context) =>  SplashScreen(),
        SIGN_IN: (BuildContext context) =>  SignInPage(),
        SIGN_UP: (BuildContext context) =>  SignUpScreen(),
        HOME_SCREEN: (BuildContext context) => HomeScreenPage(),
        SIDE_MENU: (BuildContext context) => SideMenuPage(),
      },
      initialRoute: SIGN_IN,
    );
  }
}
