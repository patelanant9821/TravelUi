import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/recommended_location_model.dart';
import 'package:travel_ui/screens/recommended_locations_screen.dart';

class SearchLocationScreen extends StatefulWidget {
  static const String id = 'SearchLocationScreen()';
  @override
  _SearchLocationScreenState createState() => _SearchLocationScreenState();
}

class _SearchLocationScreenState extends State<SearchLocationScreen> {
  late String location;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
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
            padding: const EdgeInsets.only(top: 143),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        boxShadow: [
                          BoxShadow(color: kSubtitleColor, blurRadius: 7),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextField(
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.streetAddress,
                        style: TextStyle(color: Colors.black87),
                        onChanged: (value) {
                          location = value;
                        },
                        decoration: kTextFieldDecoration,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 16, top: 24, bottom: 12, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recommended Locations',
                        style: kTitleStyle.copyWith(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RecommendedLocations()));
                        },
                        clipBehavior: Clip.antiAlias,
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.resolveWith(
                              (states) => kTitleColor),
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowRight,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: ListView.builder(
                    itemCount: recommended.length,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 2.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          height: 150,
                          width: 157,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height: 110,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(recommended[index].image),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              Text(
                                recommended[index].name,
                                style: kPopularDestinationTitleStyle,
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                recommended[index].state,
                                style: kPopularDestinationSubtitleStyle,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
