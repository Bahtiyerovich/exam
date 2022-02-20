import 'dart:async';
import 'package:examproject/core/const/const.dart';
import 'package:examproject/screens/auth/login_page.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: _myBody(context),
    );
  }

  Container _myBody(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/img/5618236.png'),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70),
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Sport',
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorWhite,
                      fontSize: FontConst.kTitleFont,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'fast news',
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorOnBoarding,
                      fontSize: FontConst.kSubtitleFont,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/Group20.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
