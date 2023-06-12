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
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LoginScreen.id: (context) => const LoginScreen(),
        SignupScreen.id: (context) => const SignupScreen(),
        Home.id: (context) => const Home(),
        HomePage.id: (context) => const HomePage(),
        OfferScreen.id: (context) => const OfferScreen(),
        ProfileScreen.id: (context) => const ProfileScreen(),
        RecommendedLocations.id: (context) => const RecommendedLocations(),
        SearchLocationScreen.id: (context) => const SearchLocationScreen(),
        WatchListScreen.id: (context) => const WatchListScreen(),
      },
    );
  }
}
