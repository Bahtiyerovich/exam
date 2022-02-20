import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BetPageTwo extends StatefulWidget {
  const BetPageTwo({Key? key}) : super(key: key);

  @override
  _BetPageTwoState createState() => _BetPageTwoState();
}

class _BetPageTwoState extends State<BetPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kPrimaryColorBB,
      body: Column(
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/bra-arg.png'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 35, right: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.person_add_alt_1_outlined,
                        color: ColorConst.kPrimaryColorWhite,
                        size: 25,
                      ),
                      Icon(
                        Icons.more_vert_rounded,
                        color: ColorConst.kPrimaryColorWhite,
                        size: 25,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 191),
                    child: Container(
                      child: Row(
                        children: [
                          Text(
                            '30:23 ',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            ' /  90:00  ',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Container(
                            height: 15,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: ColorConst.kPrimaryColorRed,
                            ),
                            child: Center(
                              child: Text(
                                'Live',
                                style: TextStyle(
                                  color: ColorConst.kPrimaryColorWhite,
                                  fontSize: FontConst.kSmallFont,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.52,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset('assets/img/Vector.svg'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Info',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Chat',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Place a Bet',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Line Up',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kMediumFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: ColorConst.kPrimaryColorGrey,
          ),
          Container(
              margin: PaddingMarginConst.kMediumPadding,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    ColorConst.kPrimaryColorB2,
                    ColorConst.kPrimaryColorB1
                  ], begin: Alignment.topCenter),
                  borderRadius: BorderRadius.circular(RadiusConst.kSmallRadius),
                  color: ColorConst.kPrimaryColorOnBoarding),
              child: Column(
                children: [
                  Container(
                    padding: PaddingMarginConst.kMediumPadding,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/img/1200px-Brazilian_Football_Confederation_logo.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '3-0',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Container(
                              height: 15,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorConst.kPrimaryColorRed,
                              ),
                              child: Center(
                                child: Text(
                                  'Live',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorWhite,
                                    fontSize: FontConst.kSmallFont,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      'assets/img/1200px-Argentina_national_football_team_logo.png'),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '22',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '42',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '32',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '28',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Shooting',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Attacks',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Possession',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Corners',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              'Card',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '22',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '43',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '55',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '04',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              '11',
                              style: TextStyle(
                                color: ColorConst.kPrimaryColorWhite,
                                fontSize: FontConst.kMediumFont,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: ColorConst.kPrimaryColorGreen,
                      fontSize: FontConst.kMediumFont,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              children: [
                Text(
                  'Ongoing',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kSmallFont,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Bets',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kSmallFont,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: PaddingMarginConst.kMediumPadding,
            height: 100,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  ColorConst.kPrimaryColorB2,
                  ColorConst.kPrimaryColorB1
                ], begin: Alignment.topCenter),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(RadiusConst.kSmallRadius),
                  topRight: Radius.circular(RadiusConst.kSmallRadius),
                ),
                color: ColorConst.kPrimaryColorOnBoarding),
            child: Padding(
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            '  Top #1',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            '  Golden Glove Winner',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '  Capa 2022 ?',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: PaddingMarginConst.kMediumPadding,
                        height: 50,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              RadiusConst.kExtraSmallRadius),
                          color:
                              ColorConst.kPrimaryColorOrange.withOpacity(0.5),
                          border: Border.all(
                            color: ColorConst.kPrimaryColorOrange,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Earn \n💎 150',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 25,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                RadiusConst.kTooExtraSmallRadius),
                            topRight: Radius.circular(
                                RadiusConst.kTooExtraSmallRadius),
                          ),
                          color: ColorConst.kPrimaryColorBlue.withOpacity(0.5),
                          border: Border.all(
                            color: ColorConst.kPrimaryColorBlue,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Emiliano Martínez',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        height: 25,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(
                                RadiusConst.kTooExtraSmallRadius),
                            topRight: Radius.circular(
                                RadiusConst.kTooExtraSmallRadius),
                          ),
                          color: ColorConst.kPrimaryColorGreen.withOpacity(0.5),
                          border: Border.all(
                            color: ColorConst.kPrimaryColorGreen,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Alisson Becker',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: ColorConst.kPrimaryColorRed,
                      fixedSize: const Size(280, 55),
                    ),
                    child: Text(
                      'Place a bet',
                      style: TextStyle(
                        fontSize: FontConst.kMediumFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  margin: PaddingMarginConst.kMediumPadding,
                  height: 50,
                  width: 90,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        ColorConst.kPrimaryColorB2,
                        ColorConst.kPrimaryColorB1
                      ], begin: Alignment.topCenter),
                      borderRadius:
                          BorderRadius.circular(RadiusConst.kSmallRadius),
                      color: ColorConst.kPrimaryColorOnBoarding),
                  child: Icon(
                    Icons.message,
                    color: ColorConst.kPrimaryColorWhite,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
