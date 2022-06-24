import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/screens/signup_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                image: ExactAssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
              child: new Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.5)),
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
                  child: Container(
                    child: Hero(
                      tag: 1,
                      child: Image.asset('assets/images/TravelLogo.png'),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    Text(
                      'Welcome',
                      style: GoogleFonts.josefinSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'to',
                      style: GoogleFonts.josefinSans(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'TravelIN',
                      style: GoogleFonts.dancingScript(
                        fontSize: 45,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 45),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF46B7FE),
                              Color(0xFF47A6FF),
                              Color(0xFF4B74FF),
                              Color(0xFF504EFE),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Login',
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 20,
                              color: kBackgroundColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupScreen()));
                      },
                      child: Container(
                        height: 50,
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).primaryColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 12,
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Signup',
                            style: GoogleFonts.ibmPlexSans(
                              fontSize: 20,
                              color: Color(0xFF4B74FF),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          indent: 7,
                          height: 50,
                        ),
                      ),
                    ),
                    Text(
                      "Or via social media",
                      style: GoogleFonts.roboto(
                          fontSize: 15, color: Colors.black45),
                    ),
                    Expanded(
                      child: new Container(
                        margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1,
                          endIndent: 7,
                          height: 50,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/icons/facebook.png',
                        height: 40, width: 40),
                    SizedBox(width: 15),
                    Image.asset('assets/icons/google.png',
                        height: 40, width: 40),
                    SizedBox(width: 15),
                    Image.asset('assets/icons/twitter.png',
                        height: 40, width: 40),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
