import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_ui/screens/profile_screen.dart';
import 'package:travel_ui/screens/search_location_screen.dart';
import 'package:travel_ui/screens/watch_list_screen.dart';
import '../constants/color_constants.dart';
import 'home_page.dart';

class Home extends StatefulWidget {
  static const String id = 'Home()';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchLocationScreen(),
    WatchListScreen(),
    ProfileScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          'assets/svg/TravelLogo.svg',
          fit: BoxFit.contain,
          //cacheColorFilter: false,
        ),
        elevation: 0.0,
      ),
      backgroundColor: kBackgroundColor,
      bottomNavigationBar: Container(
        height: 64.0,
        decoration: BoxDecoration(
          color: kFillColor,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 15,
              offset: Offset(0, 5),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? Icon(Icons.home_outlined, color: Colors.blue[900])
                  : Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? Icon(Icons.search_sharp, color: Colors.blue[900])
                  : Icon(Icons.search_sharp),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? Icon(Icons.favorite_border_sharp, color: Colors.blue[900])
                  : Icon(Icons.favorite_border_sharp),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: _selectedIndex == 3
                  ? Icon(Icons.person_outline, color: Colors.blue[900])
                  : Icon(Icons.person_outline),
              label: 'Profile',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: kBlueColor,
          unselectedItemColor: kSubtitleColor,
          onTap: _onItemTapped,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 12,
          showUnselectedLabels: true,
          elevation: 0.0,
          selectedLabelStyle: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      body: _children[_selectedIndex],
    );
  }
}
