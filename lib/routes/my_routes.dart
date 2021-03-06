import 'package:examproject/screens/auth/login_page.dart';
import 'package:examproject/screens/auth/register_page.dart';
import 'package:examproject/screens/home/bet_page.dart';
import 'package:examproject/screens/home/bet_page_two.dart';
import 'package:examproject/screens/home/home_page.dart';
import 'package:examproject/screens/on_boarding/on_boarding.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Onboarding());
      case '/signup':
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case '/login':
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/bet':
        return MaterialPageRoute(builder: (context) => const BetPage());
      case '/bettwo':
        return MaterialPageRoute(builder: (context) => const BetPageTwo());
    }
  }
}
