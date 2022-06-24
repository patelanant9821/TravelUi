import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/screens/login_screen.dart';

class SignupScreen extends StatefulWidget {
  static const String id = 'SignupScreen()';

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isChecked = false;

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
                  color: kBackgroundColor,
                ),
                Positioned(
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF47A6FF),
                          Color(0xFF4B74FF),
                          Color(0xFF504EFE),
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 28.0, vertical: 16.0),
                      child: Column(
                        children: [
                          Text(
                            'Sign up',
                            style: kScreenTitleStyle.copyWith(color: kBackgroundColor,
                                fontWeight: FontWeight.w700, fontSize: 36),
                          ),
                          SizedBox(height: 30),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                              color: kBackgroundColor,
                            ),
                            decoration: kSignupTextFieldDecoration.copyWith(
                              labelText: 'Full Name',
                              hintText: 'Your name here',
                            ),
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 28),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                              color: kBackgroundColor,
                            ),
                            decoration: kSignupTextFieldDecoration.copyWith(
                              labelText: 'Email',
                              hintText: 'example@email.com',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 28),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                              color: kBackgroundColor,
                            ),
                            decoration: kSignupTextFieldDecoration.copyWith(
                              labelText: 'Phone',
                            ),
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                          ),
                          SizedBox(height: 28),
                          TextField(
                            style: GoogleFonts.josefinSans(
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.w600,
                              color: kBackgroundColor,
                            ),
                            decoration: kSignupTextFieldDecoration.copyWith(
                              labelText: 'Password',
                            ),
                            keyboardType: TextInputType.text,
                            enableSuggestions: false,
                            obscureText: true,
                            autocorrect: false,
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Color(0xFF4B74FF),
                                activeColor: kBackgroundColor,
                                focusColor: kBackgroundColor,
                                hoverColor: kBackgroundColor,
                                fillColor: MaterialStateProperty.all(kBackgroundColor),
                                value: this.isChecked,
                                onChanged: (bool value) {
                                  setState(() {
                                    this.isChecked = value;
                                  });
                                },
                              ),
                              Text(
                                'Agree all ',
                                style: GoogleFonts.josefinSans(
                                  letterSpacing: 1.0,
                                  color: kBackgroundColor,
                                ),
                              ),
                              Text(
                                'Terms & Conditions',
                                style: GoogleFonts.josefinSans(
                                  letterSpacing: 1.0,
                                  fontWeight: FontWeight.w900,
                                  color: kBackgroundColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18),
                          Container(
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
                              color: kBackgroundColor,
                            ),
                            child: Center(
                              child: Text(
                                'Sign up',
                                style: GoogleFonts.josefinSans(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 22,
                                  color: Color(0xFF4B74FF),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have account?  ',
                                style: GoogleFonts.josefinSans(
                                  letterSpacing: 1.0,
                                  color: kBackgroundColor,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginScreen()));
                                },
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.josefinSans(
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w900,
                                    color: kBackgroundColor,
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
                      child: Image.asset(
                        'assets/images/TravelLogo.png',
                        height: 155,
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
