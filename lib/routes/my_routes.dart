import 'package:examproject/screens/auth/login_page.dart';
import 'package:examproject/screens/auth/register_page.dart';
import 'package:examproject/screens/home/home_page.dart';
import 'package:examproject/screens/on_boarding/on_boarding.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const Onboarding());
      // case '/':
      //   return MaterialPageRoute(builder: (context) => const LoginPage());
        //  case '/':
        // return MaterialPageRoute(builder: (context) => const SignUpPage());
        //   case '/':
        // return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
