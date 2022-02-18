import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: Column(
        children: [
          Container(
            
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Column(
               
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Let's Enter Your",
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorOnBoarding,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextFormField()
        ],
      ),
    );
  }
}
