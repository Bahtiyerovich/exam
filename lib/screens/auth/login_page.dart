import 'package:examproject/core/const/const.dart';
import 'package:examproject/data/user_data.dart';
import 'package:examproject/screens/auth/register_page.dart';
import 'package:examproject/screens/home/home_page.dart';
import 'package:examproject/widgets/scaffold_messenger.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isSecured = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool sms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: _myBody(context),
    );
  }

  Column _myBody(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/53971691.png'),
            ),
          ),
          padding: const EdgeInsets.only(top: 60),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kSubtitleFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  height: 33,
                ),
                Text(
                  "Let's Enter Your",
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorOnBoarding,
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Padding(
                  padding: PaddingMarginConst.kExtraLargePadding,
                  child: Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email',
                          style: TextStyle(
                            fontSize: FontConst.kMediumFont,
                            color: ColorConst.kPrimaryColorWhite,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: _emailController,
                          onChanged: (txt) {
                            setState(() {});
                          },
                          autofocus: true,
                          cursorColor: ColorConst.kPrimaryColorOnBoarding,
                          decoration: InputDecoration(
                            hintText: "Email",
                            hintStyle: TextStyle(
                                color: ColorConst.kPrimaryColorOnBoarding),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  RadiusConst.kMediumRadius),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorGrey,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                RadiusConst.kMediumRadius,
                              ),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorOnBoarding,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                RadiusConst.kMediumRadius,
                              ),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorOnBoarding,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: PaddingMarginConst.kExtraLargePadding,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              fontSize: FontConst.kMediumFont,
                              color: ColorConst.kPrimaryColorWhite,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _isSecured,
                          autofocus: true,
                          cursorColor: ColorConst.kPrimaryColorOnBoarding,
                          decoration: InputDecoration(
                            hintText: "password",
                            hintStyle: TextStyle(
                                color: ColorConst.kPrimaryColorOnBoarding),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  RadiusConst.kMediumRadius),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorGrey,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                RadiusConst.kMediumRadius,
                              ),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorOnBoarding,
                              ),
                            ),
                            suffix: IconButton(
                              color: ColorConst.kPrimaryColorOnBoarding,
                              splashRadius: 10,
                              icon: const Icon(
                                Icons.remove_red_eye,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isSecured = !_isSecured;
                                });
                              },
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                RadiusConst.kMediumRadius,
                              ),
                              borderSide: BorderSide(
                                color: ColorConst.kPrimaryColorOnBoarding,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 250, left: 25),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: ColorConst.kPrimaryColorOnBoarding,
                              fixedSize: const Size(350, 55),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            onPressed: () {
                              for (Map item in UserInfo.users) {
                                for (var i in item.keys) {
                                  if (i == _emailController.text &&
                                      item[i] == _passwordController.text) {
                                    sms = true;
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()),
                                    );
                                  }
                                }
                              }
                              if (!sms) {
                                MyMessenger.showMyMessenger(
                                    "Email or password entered incorrectly!",
                                    context);
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account?",
                              style: TextStyle(
                                fontSize: FontConst.kMediumFont,
                                color: ColorConst.kPrimaryColorWhite,
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()),
                                );
                              },
                              child: Text(
                                "Create new account",
                                style: TextStyle(
                                  fontSize: FontConst.kMediumFont,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
