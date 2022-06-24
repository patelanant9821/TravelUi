import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/screens/signup_screen.dart';

import 'home.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'LoginScreen()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF47A6FF),
                        Color(0xFF4B74FF),
                        Color(0xFF504EFE),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                        ),
                      ],
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 16.0),
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Text(
                            'Login',
                            style: kScreenTitleStyle.copyWith(
                                fontWeight: FontWeight.w700, fontSize: 36),
                          ),
                          SizedBox(height: 40),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: kLoginTextFieldDecoration.copyWith(
                              labelText: 'Email',
                              hintText: 'example@email.com',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 30),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                            ),
                            decoration: kLoginTextFieldDecoration.copyWith(
                              labelText: 'Password',
                            ),
                            keyboardType: TextInputType.text,
                            enableSuggestions: false,
                            obscureText: true,
                            autocorrect: false,
                          ),
                          SizedBox(height: 50),
                          InkWell(
                            onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                  builder: (context) =>
                                      Home()));
                            },
                            child: Container(
                              height: 50,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFF47A6FF),
                                    Color(0xFF4B74FF),
                                    Color(0xFF504EFE),
                                  ],
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.josefinSans(
                                    fontSize: 24,
                                    color: kBackgroundColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 17),
                          Text(
                            'Forget your password?',
                            style: kTravelLogPlaceStyle.copyWith(
                              color: Color(0xFF4B74FF),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 100),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account ? ',
                                style: kTravelLogPlaceStyle.copyWith(
                                  color: Colors.grey,
                                  fontSize: 16,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupScreen()));
                                },
                                child: Text(
                                  'Sign up',
                                  style: kTravelLogPlaceStyle.copyWith(
                                    color: Color(0xFF4B74FF),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
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
            Column(
              children: [
                SizedBox(height: 50),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 42, vertical: 30),
                  child: Container(
                    child: Center(
                      child: Hero(
                        tag: 1,
                        child: Image.asset(
                          'assets/images/TravelLogoWhite.png',
                          height: 155,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
