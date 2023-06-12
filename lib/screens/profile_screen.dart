import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/screens/offers_screen.dart';

class ProfileScreen extends StatelessWidget {
  static const String id = 'ProfileScreen()';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/profile-background.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 145),
                child: Container(
                  height: 190,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: kSubtitleColor,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 90),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/jon-snow.jpeg'),
                      radius: 50,
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jon Snow',
                            style: kScreenTitleStyle.copyWith(fontSize: 20),
                          ),
                          SizedBox(width: 15),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              FontAwesomeIcons.penToSquare,
                              size: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      'Traveller, Foodie & Artist',
                      style: kServiceSubtitleStyle.copyWith(fontSize: 12),
                    ),
                    SizedBox(height: 25),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OfferScreen()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: kSubtitleColor, blurRadius: 1),
                          ],
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF46B7FE),
                              Color(0xFF47A6FF),
                              Color(0xFF4B74FF),
                              Color(0xFF504EFE),
                            ],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 18, vertical: 8),
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.gift,
                                size: 35,
                                color: Colors.redAccent,
                              ),
                              SizedBox(width: 15),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Promo & Updates',
                                    style: kTitleStyle.copyWith(
                                        fontSize: 16, color: kBackgroundColor),
                                  ),
                                  Text(
                                    'Latest offers, coupon code & more',
                                    style: kTitleStyle.copyWith(
                                        fontSize: 10,
                                        color:
                                            kBackgroundColor.withOpacity(0.7)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 16.0, right: 16, top: 16, bottom: 16),
            child: Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: kSubtitleColor,
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 7),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Change Password',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Credits & Coupons',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Invite Friends',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Help Center',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Payments',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Settings',
                          style: kServiceTitleStyle.copyWith(fontSize: 15),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                  Divider(thickness: 1),
                  Container(
                    height: 30,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Logout',
                          style: kServiceTitleStyle.copyWith(
                              fontSize: 15,
                              color: kTitleColor.withOpacity(0.6)),
                        ),
                        Icon(
                          Icons.chevron_right_rounded,
                          color: kTitleColor.withOpacity(0.6),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ListView.builder(
// itemCount: profiles.length,
// itemBuilder: (context, index) {
// return Column(
// children: [
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// child: Container(
// color: Colors.blue,
// height: 30,
// child: Text(
// profiles[index].name,
// ),
// width: double.infinity,
// ),
// ),
// Divider(
// height: 1,
// ),
// ],
// );
// }),
