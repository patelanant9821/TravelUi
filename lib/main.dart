import 'package:flutter/material.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/screens/home_page.dart';
import 'package:travel_ui/screens/login_screen.dart';
import 'package:travel_ui/screens/offers_screen.dart';
import 'package:travel_ui/screens/profile_screen.dart';
import 'package:travel_ui/screens/recommended_locations_screen.dart';
import 'package:travel_ui/screens/search_location_screen.dart';
import 'package:travel_ui/screens/signup_screen.dart';
import 'package:travel_ui/screens/watch_list_screen.dart';
import 'package:travel_ui/screens/welcome_screen.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        SignupScreen.id: (context) => SignupScreen(),
        Home.id: (context) => Home(),
        HomePage.id: (context) => HomePage(),
        OfferScreen.id: (context) => OfferScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        RecommendedLocations.id: (context) => RecommendedLocations(),
        SearchLocationScreen.id: (context) => SearchLocationScreen(),
        WatchListScreen.id: (context) => WatchListScreen(),
      },
    );
  }
}
