import 'package:app/modules/home/login/emailverify.dart';
import 'package:app/modules/home/login/forgot_password.dart';
import 'package:app/modules/home/login/loginpage.dart';
import 'package:app/modules/home/login/signup_page.dart';
import 'package:flutter/material.dart';

import 'package:app/modules/items/items_page.dart';

abstract class Router {
  static String home = "/";
  static String items = "/items";
  static String forgot = "/forgot";
  static String signup = "/signup";
  static String login = "/login";
  static String verify = "/verify";



  static Map<String, WidgetBuilder> getRoutes(context) {
    return {
      home: (context) => LoginPg(),
      items: (context) => ItemsPage(),
      forgot: (context) => ForgotPaswordScreen(),
      signup: (context) => SignUpPage(),
      login: (context) => LoginPg(),
      verify: (context) => EmailVerifyScreen(),



    };
  }
}
