import 'package:examproject/core/component/theme_comp.dart';
import 'package:examproject/routes/my_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final MyRoute _myRoute = MyRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeComp.materialTheme,
      onGenerateRoute: _myRoute.onGenerateRoute,
      initialRoute: '/',
    );
  }
}
