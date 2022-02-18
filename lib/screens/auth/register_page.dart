import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _checkbox = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/53971691.png'),
                ),
              ),
              padding: const EdgeInsets.only(
                top: 87,
              ),
              child: Center(
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
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.3,
            child: Padding(
              padding: PaddingMarginConst.kExtraLargePadding,
              child: Form(
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
                      autofocus: true,
                      cursorColor: ColorConst.kPrimaryColorOnBoarding,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusConst.kMediumRadius),
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
                      autofocus: true,
                      cursorColor: ColorConst.kPrimaryColorOnBoarding,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusConst.kMediumRadius),
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
                      autofocus: true,
                      cursorColor: ColorConst.kPrimaryColorOnBoarding,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(RadiusConst.kMediumRadius),
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
                          'i have read the',
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
                    // ElevatedButton(
                    //   style: ButtonStyle(
                    //     shape:
                    //         MaterialStateProperty.all<RoundedRectangleBorder>(
                    //       RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(18.0),

                    //         ),
                    //       ),
                    //     ),

                    //   child: Text('Submit'),
                    //   onPressed: () {},
                    // ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: ColorConst.kPrimaryColorOnBoarding,
                        fixedSize: const Size(390, 55),
                      ),
                      child: const Text(
                        'Create',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
