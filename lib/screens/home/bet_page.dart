import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BetPage extends StatefulWidget {
  const BetPage({Key? key}) : super(key: key);

  @override
  _BetPageState createState() => _BetPageState();
}

class _BetPageState extends State<BetPage> {
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
            child: Container(
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/Rectangle657.png'),
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
                      padding: const EdgeInsets.all(50.0),
                      child: Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/img/Group97.svg',
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Copa America Final 2022',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: FontConst.kExtraLargeFont,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'John Doe, Antony, Alen + 32 Others',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: FontConst.kSmallFont,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
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
                  ],
                ),
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
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 300,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              'assets/img/1200px-Brazilian_Football_Confederation_logo.png'),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '12\n22\n42\n32\n28',
                                    style: TextStyle(
                                      color: ColorConst.kPrimaryColorWhite,
                                      fontSize: FontConst.kSmallFont,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Shooting\nAttacks\nPossession\nCorners\nCard',
                                    style: TextStyle(
                                      color: ColorConst.kPrimaryColorWhite,
                                      fontSize: FontConst.kSmallFont,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    '22\n43\n55\n04\n11',
                                    style: TextStyle(
                                      color: ColorConst.kPrimaryColorWhite,
                                      fontSize: FontConst.kSmallFont,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'See All',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorGreen,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Row(
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
              padding: PaddingMarginConst.kSmallPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Top #1',
                        style: TextStyle(
                          color: ColorConst.kPrimaryColorWhite,
                          fontSize: FontConst.kSmallFont,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Golden Glove Winner',
                        style: TextStyle(
                          color: ColorConst.kPrimaryColorWhite,
                          fontSize: FontConst.kSmallFont,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Capa 2022 ?',
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
                      borderRadius:
                          BorderRadius.circular(RadiusConst.kExtraSmallRadius),
                      color: ColorConst.kPrimaryColorOrange.withOpacity(0.5),
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
                  Row(
                    children: [
                      Container(
                        margin: PaddingMarginConst.kMediumPadding,
                        height: 20,
                        width: 200,
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
                      Container(
                        margin: PaddingMarginConst.kMediumPadding,
                        height: 20,
                        width: 200,
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
                  )
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
