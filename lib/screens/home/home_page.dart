import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: PaddingMarginConst.kMediumPadding,
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.filter_list),
                  hintText: "City/Stadium",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      RadiusConst.kMediumRadius,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              'Know your favourite team score',
              style: TextStyle(
                color: ColorConst.kPrimaryColorWhite,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 141,
              width: 355,
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment(0.7, 0),
                  image: AssetImage('assets/img/stadium1.png'),
                ),
                border: Border.all(color: Colors.grey),
                color: ColorConst.kPrimaryColorOnBoarding,
                borderRadius: BorderRadius.circular(
                  RadiusConst.kMediumRadius,
                ),
              ),
              child: Padding(
                padding: PaddingMarginConst.kMediumPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Up to 50% discount',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'Pahlavon Stadium',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      '3.6',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorYellow,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      'Sergeli, Tashkent',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: PaddingMarginConst.kMediumPadding,
              child: SizedBox(
                width: 55,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 10,
                      width: 20,
                      decoration: BoxDecoration(
                        color: ColorConst.kPrimaryColorOnBoarding,
                        borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 5,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      radius: 5,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
