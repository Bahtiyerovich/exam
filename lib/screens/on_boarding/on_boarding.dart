import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: Container(
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
              height: MediaQuery.of(context).size.height*0.7,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/Group20.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
