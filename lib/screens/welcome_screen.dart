import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/screens/signup_screen.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'WelcomeScreen()';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(),
              image: DecorationImage(
                image: ExactAssetImage('assets/images/welcome.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 42, vertical: 8),
                // ignore: avoid_unnecessary_containers
                child: Container(
                  child: Hero(
                    tag: 1,
                    child: Image.asset('assets/images/TravelLogo.png'),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              Column(
                children: [
                  Text(
                    'Welcome',
                    style: GoogleFonts.josefinSans(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 5),
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
              const SizedBox(height: 45),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 12,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
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
                              builder: (context) => const SignupScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Theme.of(context).primaryColor,
                        boxShadow: const [
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
                            color: const Color(0xFF4B74FF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: const Divider(
                        color: Colors.grey,
                        thickness: 1,
                        indent: 7,
                        height: 50,
                      ),
                    ),
                  ),
                  Text(
                    "Or via social media",
                    style:
                        GoogleFonts.roboto(fontSize: 15, color: Colors.black45),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                      child: const Divider(
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
                  const SizedBox(width: 15),
                  Image.asset('assets/icons/google.png', height: 40, width: 40),
                  const SizedBox(width: 15),
                  Image.asset('assets/icons/twitter.png',
                      height: 40, width: 40),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
