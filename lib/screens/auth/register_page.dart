import 'package:examproject/core/const/const.dart';
import 'package:examproject/data/user_data.dart';
import 'package:examproject/screens/home/home_page.dart';
import 'package:examproject/widgets/scaffold_messenger.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool sms = false;
  final _formKey = GlobalKey<FormState>();

  bool _checkbox = true;
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
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/img/53971691.png'),
            ),
          ),
          padding: const EdgeInsets.only(top: 87),
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/image22.png'),
              ),
            ),
            padding: const EdgeInsets.only(top: 87),
            child: Padding(
              padding: PaddingMarginConst.kMediumPadding,
              child: Column(
                children: [
                  Text(
                    'Get started',
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorWhite,
                      fontSize: FontConst.kSubtitleFont,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Text(
                    "Let’s create your accaunt",
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorOnBoarding,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First name',
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
                          onChanged: (txt) {
                            setState(() {});
                          },
                          controller: _fullNameController,
                          style:
                              TextStyle(color: ColorConst.kPrimaryColorWhite),
                          autofocus: true,
                          cursorColor: ColorConst.kPrimaryColorOnBoarding,
                          decoration: InputDecoration(
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
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          child: Text(
                            'Email',
                            style: TextStyle(
                              fontSize: FontConst.kMediumFont,
                              color: ColorConst.kPrimaryColorWhite,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        TextFormField(
                          onChanged: (txt) {
                            setState(() {});
                          },
                          controller: _emailController,
                          style:
                              TextStyle(color: ColorConst.kPrimaryColorWhite),
                          autofocus: true,
                          cursorColor: ColorConst.kPrimaryColorOnBoarding,
                          decoration: InputDecoration(
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
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
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
                          validator: (txt) {
                            if (txt!.length < 8) {
                              return "The number of characters must be more than 8!";
                            }
                          },
                          obscureText: true,
                          style:
                              TextStyle(color: ColorConst.kPrimaryColorWhite),
                          autofocus: true,
                          cursorColor: ColorConst.kPrimaryColorOnBoarding,
                          decoration: InputDecoration(
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
                        Row(
                          children: [
                            Checkbox(
                                checkColor: ColorConst.kPrimaryColorWhite,
                                activeColor: ColorConst.kPrimaryColorOnBoarding,
                                side: BorderSide(
                                  color: ColorConst.kPrimaryColorGrey,
                                ),
                                value: _checkbox,
                                onChanged: (status) {
                                  setState(() {
                                    _checkbox = !_checkbox;
                                  });
                                }),
                            Text(
                              'I have read the',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              ' Privace Policy',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorOnBoarding,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.1,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: ColorConst.kPrimaryColorOnBoarding,
                            fixedSize: const Size(400, 55),
                          ),
                          child: const Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_emailController.text.isNotEmpty) {
                                for (var item in UserInfo.users) {
                                  for (var i in item.keys) {
                                    if (i == _emailController.text) {
                                      sms = true;
                                      MyMessenger.showMyMessenger(
                                          "This account is already registread!",
                                          context);
                                    }
                                  }
                                }
                                if (!sms) {
                                  UserInfo.users.add({
                                    _emailController.text:
                                        _passwordController.text
                                  });
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage()),
                                    );
                                }
                              }
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
