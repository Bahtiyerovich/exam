import 'package:examproject/core/const/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:table_calendar/table_calendar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _cI = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.transparent,
      //   selectedItemColor: ColorConst.kPrimaryColorOnBoarding,
      //   unselectedItemColor: ColorConst.kPrimaryColorGrey,
      //   showUnselectedLabels: true,
      //   currentIndex: _cI,
      //   onTap: (int index) {
      //     setState(() {
      //       _cI = index;
      //     });
      //   },
      //   items: [],
      // ),
      backgroundColor: ColorConst.kPrimaryColorBack,
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 45,
          ),
          Padding(
            padding: PaddingMarginConst.kMediumPadding,
            child: TextFormField(
              autofocus: true,
              cursorColor: ColorConst.kPrimaryColorOnBoarding,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: ColorConst.kPrimaryColorOnBoarding,
                ),
                suffixIcon: Icon(
                  Icons.filter_list,
                  color: ColorConst.kPrimaryColorOnBoarding,
                ),
                hintText: "City/Stadium",
                hintStyle: TextStyle(
                  color: ColorConst.kPrimaryColorOnBoarding,
                ),
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
          ),
          const SizedBox(
            height: 24,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            width: double.infinity,
            child: Text(
              'Know your favourite \nteam score',
              style: TextStyle(
                color: ColorConst.kPrimaryColorWhite,
                fontSize: FontConst.kSubtitleFont,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.95,
            decoration: BoxDecoration(
              image: const DecorationImage(
                alignment: Alignment(0.7, 0),
                image: AssetImage('assets/img/stadium1.png'),
              ),
              border: Border.all(color: ColorConst.kPrimaryColorGrey),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      'Pahlavon Stadium',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorWhite,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset('assets/img/Star.svg'),
                      ),
                      Text(
                        '3.6',
                        style: TextStyle(
                          color: ColorConst.kPrimaryColorYellow,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: SvgPicture.asset('assets/img/Location.svg'),
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
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConst.kPrimaryColorGrey,
                    radius: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConst.kPrimaryColorGrey,
                    radius: 5,
                  ),
                  CircleAvatar(
                    backgroundColor: ColorConst.kPrimaryColorGrey,
                    radius: 5,
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: PaddingMarginConst.kLargePadding,
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Basketball',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorGrey,
                    fontSize: FontConst.kMediumFont,
                  ),
                ),
                Text(
                  'Ping-Pong',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorGrey,
                    fontSize: FontConst.kMediumFont,
                  ),
                ),
                Text(
                  'Football',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorWhite,
                    fontSize: FontConst.kMediumFont,
                  ),
                ),
                Text(
                  'Horseback',
                  style: TextStyle(
                    color: ColorConst.kPrimaryColorGrey,
                    fontSize: FontConst.kMediumFont,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100),
            child: CircleAvatar(
              backgroundColor: ColorConst.kPrimaryColorOnBoarding,
              radius: 5,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.35,
            //umumiy buyi
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemExtent: MediaQuery.of(context).size.width * 0.6, //eni
              itemBuilder: ((BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          margin: PaddingMarginConst.kMediumPadding,
                          padding: PaddingMarginConst.kMediumPadding,
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: ColorConst.kPrimaryColorGrey),
                            color: ColorConst.kPrimaryColorDark,
                            borderRadius: BorderRadius.circular(
                                RadiusConst.kExtraLargeRadius),
                          ),
                        ),
                      ),
                      Positioned(
                        child: Row(
                          children: [],
                        ),
                      ),
                      Positioned(
                        top: 18,
                        left: 18.5,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.511,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft:
                                  Radius.circular(RadiusConst.kLargeRadius),
                              topRight:
                                  Radius.circular(RadiusConst.kLargeRadius),
                            ),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/img/Rectangle241.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        left: 10,
                        child: IconButton(
                          iconSize: 90,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/img/Group2992@3x.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 10,
                        child: IconButton(
                          iconSize: 90,
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            'assets/img/Group27.svg',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 215,
                        left: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pakhtakor Stadium',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: ColorConst.kPrimaryColorWhite,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: SvgPicture.asset(
                                      'assets/img/Location.svg'),
                                ),
                                Text(
                                  'Sergili, Tashkent',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: FontConst.kSmallFont,
                                    color: ColorConst.kPrimaryColorWhite,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: SvgPicture.asset(
                                      'assets/img/TimeCircle.svg'),
                                ),
                                Text(
                                  'Available time:',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: ColorConst.kPrimaryColorWhite,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 215,
                        right: 20,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: PaddingMarginConst.kExtraSmallPadding,
                              height:
                                  MediaQuery.of(context).size.height * 0.025,
                              width: MediaQuery.of(context).size.width * 0.14,
                              decoration: BoxDecoration(
                                color: ColorConst.kPrimaryColorOnBoarding,
                                borderRadius: BorderRadius.circular(
                                    RadiusConst.kExtraSmallRadius),
                              ),
                              child: Center(
                                child: Text(
                                  '9.6 km',
                                  style: TextStyle(
                                    fontSize: FontConst.kSmallFont,
                                    fontWeight: FontWeight.w500,
                                    color: ColorConst.kPrimaryColorWhite,
                                  ),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      SvgPicture.asset('assets/img/Star.svg'),
                                ),
                                Text(
                                  '3.6',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '09:00-11:00',
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: ColorConst.kPrimaryColorOnBoarding,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15),
            height: MediaQuery.of(context).size.height * 0.1,
            color: ColorConst.kPrimaryColorDark,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.home_filled,
                      size: 40,
                      color: ColorConst.kPrimaryColorOnBoarding,
                    ),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorOnBoarding,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.search,
                      size: 40,
                      color: ColorConst.kPrimaryColorGrey,
                    ),
                    Text(
                      'Search',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorGrey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.bookmark_outlined,
                      size: 40,
                      color: ColorConst.kPrimaryColorGrey,
                    ),
                    Text(
                      'Saved',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorGrey,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.person,
                      size: 40,
                      color: ColorConst.kPrimaryColorGrey,
                    ),
                    Text(
                      'Profil',
                      style: TextStyle(
                        color: ColorConst.kPrimaryColorGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 270, top: 20, bottom: 20),
            child: Text(
              'Nearby Games',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: FontConst.kMediumFont,
                fontWeight: FontWeight.w400,
                color: ColorConst.kPrimaryColorWhite,
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment(-0.9, 0),
                      image: AssetImage('assets/img/Rectangle128.png'),
                    ),
                    border: Border.all(color: ColorConst.kPrimaryColorGrey),
                    borderRadius: BorderRadius.circular(
                      RadiusConst.kMediumRadius,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(left: 130, top: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Copa America Final 2022',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child:
                                    SvgPicture.asset('assets/img/Location.svg'),
                              ),
                              Text(
                                'Sergili, Tashkent',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: FontConst.kSmallFont,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                    'assets/img/TimeCircle.svg'),
                              ),
                              Text(
                                'Available time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      SvgPicture.asset('assets/img/Star.svg'),
                                ),
                                Text(
                                  '3.6',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '\$15',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: FontConst.kMediumFont,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/img/Group27.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '09:00-11:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ColorConst.kPrimaryColorOnBoarding,
                        ),
                      ),
                    ),
                    Container(
                      padding: PaddingMarginConst.kExtraSmallPadding,
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: ColorConst.kPrimaryColorOnBoarding,
                        borderRadius: BorderRadius.circular(
                            RadiusConst.kExtraSmallRadius),
                      ),
                      child: Center(
                        child: Text(
                          '9.6 km',
                          style: TextStyle(
                            fontSize: FontConst.kSmallFont,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.kPrimaryColorWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment(-0.9, 0),
                      image: AssetImage('assets/img/Rectangle228.png'),
                    ),
                    border: Border.all(color: ColorConst.kPrimaryColorGrey),
                    borderRadius: BorderRadius.circular(
                      RadiusConst.kMediumRadius,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 130, top: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Copa America Final 2022',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child:
                                    SvgPicture.asset('assets/img/Location.svg'),
                              ),
                              Text(
                                'Sergili, Tashkent',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: FontConst.kSmallFont,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                    'assets/img/TimeCircle.svg'),
                              ),
                              Text(
                                'Available time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      SvgPicture.asset('assets/img/Star.svg'),
                                ),
                                Text(
                                  '3.6',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '\$15',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: FontConst.kMediumFont,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/img/Group27.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '09:00-11:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ColorConst.kPrimaryColorOnBoarding,
                        ),
                      ),
                    ),
                    Container(
                      padding: PaddingMarginConst.kExtraSmallPadding,
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: ColorConst.kPrimaryColorOnBoarding,
                        borderRadius: BorderRadius.circular(
                            RadiusConst.kExtraSmallRadius),
                      ),
                      child: Center(
                        child: Text(
                          '9.6 km',
                          style: TextStyle(
                            fontSize: FontConst.kSmallFont,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.kPrimaryColorWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TableCalendar(
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(
                  color: ColorConst.kPrimaryColorWhite,
                ),
              ),
              firstDay: DateTime.utc(2022, 02, 01),
              lastDay: DateTime.utc(2022, 02, 28),
              focusedDay: DateTime.now(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              OutlinedButton(
                child: Text('Cancel'),
                onPressed: () {},
              ),
              ElevatedButton(onPressed: () {}, child: Text('Done')),
            ],
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment(-0.9, 0),
                      image: AssetImage('assets/img/Rectangle228.png'),
                    ),
                    border: Border.all(color: ColorConst.kPrimaryColorGrey),
                    borderRadius: BorderRadius.circular(
                      RadiusConst.kMediumRadius,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: EdgeInsets.only(left: 130, top: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lokomotiv Stadium',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child:
                                    SvgPicture.asset('assets/img/Location.svg'),
                              ),
                              Text(
                                'Sergili, Tashkent',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: FontConst.kSmallFont,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                    'assets/img/TimeCircle.svg'),
                              ),
                              Text(
                                'Available time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      SvgPicture.asset('assets/img/Star.svg'),
                                ),
                                Text(
                                  '3.6',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/img/Bookmarkyellow.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '09:00-11:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ColorConst.kPrimaryColorOnBoarding,
                        ),
                      ),
                    ),
                    Container(
                      padding: PaddingMarginConst.kExtraSmallPadding,
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: ColorConst.kPrimaryColorOnBoarding,
                        borderRadius: BorderRadius.circular(
                            RadiusConst.kExtraSmallRadius),
                      ),
                      child: Center(
                        child: Text(
                          '9.6 km',
                          style: TextStyle(
                            fontSize: FontConst.kSmallFont,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.kPrimaryColorWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      alignment: Alignment(-0.9, 0),
                      image: AssetImage('assets/img/Rectangle228.png'),
                    ),
                    border: Border.all(color: ColorConst.kPrimaryColorGrey),
                    borderRadius: BorderRadius.circular(
                      RadiusConst.kMediumRadius,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.only(left: 130, top: 20),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lokomotiv Stadium',
                            style: TextStyle(
                              color: ColorConst.kPrimaryColorWhite,
                              fontSize: FontConst.kSmallFont,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child:
                                    SvgPicture.asset('assets/img/Location.svg'),
                              ),
                              Text(
                                'Sergili, Tashkent',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  fontSize: FontConst.kSmallFont,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: SvgPicture.asset(
                                    'assets/img/TimeCircle.svg'),
                              ),
                              Text(
                                'Available time:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: ColorConst.kPrimaryColorWhite,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child:
                                      SvgPicture.asset('assets/img/Star.svg'),
                                ),
                                Text(
                                  '3.6',
                                  style: TextStyle(
                                    color: ColorConst.kPrimaryColorYellow,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    IconButton(
                      iconSize: 20,
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/img/Bookmarkyellow.svg',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        '09:00-11:00',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: ColorConst.kPrimaryColorOnBoarding,
                        ),
                      ),
                    ),
                    Container(
                      padding: PaddingMarginConst.kExtraSmallPadding,
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.14,
                      decoration: BoxDecoration(
                        color: ColorConst.kPrimaryColorOnBoarding,
                        borderRadius: BorderRadius.circular(
                            RadiusConst.kExtraSmallRadius),
                      ),
                      child: Center(
                        child: Text(
                          '9.6 km',
                          style: TextStyle(
                            fontSize: FontConst.kSmallFont,
                            fontWeight: FontWeight.w500,
                            color: ColorConst.kPrimaryColorWhite,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            //umumiy buyi
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemExtent: MediaQuery.of(context).size.width * 0.4, //eni
              itemBuilder: ((BuildContext context, int index) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        child: Container(
                          margin: PaddingMarginConst.kMediumPadding,
                          // padding: PaddingMarginConst.kMediumPadding,
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                RadiusConst.kExtraLargeRadius),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 30,
                        left: 18.5,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.35,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(RadiusConst.kSmallRadius),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'assets/img/Rectangle241.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 180,
                        left: 25,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokomotive S',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                color: ColorConst.kPrimaryColorWhite,
                              ),
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: SvgPicture.asset(
                                          'assets/img/Location.svg'),
                                    ),
                                    Text(
                                      '3.9 km',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: FontConst.kSmallFont,
                                        color: ColorConst.kPrimaryColorWhite,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: SvgPicture.asset(
                                          'assets/img/Star.svg'),
                                    ),
                                    Text(
                                      '3.6',
                                      style: TextStyle(
                                        color: ColorConst.kPrimaryColorYellow,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ]),
      ),
    );
  }
}
