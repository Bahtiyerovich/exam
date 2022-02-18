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
    return _scaffold();
  }

  Scaffold _scaffold() {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 87,
            ),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Get started',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  const Text(
                    "Let’s create your accaunt",
                    style: TextStyle(
                      color: Colors.black,
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
          Padding(
            padding: PaddingMarginConst.kExtraLargePadding,
            child: Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('First name'),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        RadiusConst.kMediumRadius,
                      ),
                    ),
                  ),
                ),
                const Text('Email'),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        RadiusConst.kMediumRadius,
                      ),
                    ),
                  ),
                ),
                const Text('Password'),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        RadiusConst.kMediumRadius,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Checkbox(
                        value: _checkbox,
                        onChanged: (status) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        }),
                    const Text(
                      'i have read the Privace Policy',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: ColorConst.kPrimaryColorOnBoarding,
                    fixedSize: const Size(350, 55),
                  ),
                  child: const Text(
                    'Create',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {},
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
