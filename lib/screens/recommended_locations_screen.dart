import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/recommended_location_model.dart';
import 'package:travel_ui/screens/search_location_screen.dart';

class RecommendedLocations extends StatefulWidget {
  static const String id = 'RecommendedLocations()';
  @override
  _RecommendedLocationsState createState() => _RecommendedLocationsState();
}

class _RecommendedLocationsState extends State<RecommendedLocations> {

  List savedWidget = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => SearchLocationScreen()));
          },
          child: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
            size: 18,
          ),
        ),
        title: Text(
          'Recommended Locations',
          style: kScreenTitleStyle.copyWith(fontSize: 18),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.longestSide,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) => Divider(
                  height: 0,
                  thickness: 0,
                ),
                itemCount: recommended.length,
                itemBuilder: (context, index) {
                  var save = recommended[index];
                  bool isSaved = savedWidget.contains(save);
                  
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Card(
                      color: kFillColor,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ExpansionTile(
                        childrenPadding: EdgeInsets.symmetric(horizontal: 12),
                        tilePadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                        leading: Container(
                          width: 98,
                          alignment: AlignmentDirectional.centerStart,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                image: AssetImage(recommended[index].image),
                              )),
                        ),
                        title: Text(
                          '${recommended[index].name}',
                          style: kTitleStyle.copyWith(color: kBlueColor),
                        ),
                        subtitle: Text(
                          '${recommended[index].state}',
                          style: kServiceSubtitleStyle,
                        ),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '${recommended[index].description}',
                                style: kTravelLogContentStyle.copyWith(
                                    fontSize: 12),
                              ),
                              SizedBox(height: 14),
                              Row(
                                children: [
                                  Text(
                                    'Best time to visit: ',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Colors.grey[850],
                                    ),
                                  ),
                                  Text(
                                    '${recommended[index].bestTimeToVisit}',
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    'Package: ',
                                    style: GoogleFonts.roboto(
                                      fontSize: 13,
                                      color: Colors.grey[850],
                                    ),
                                  ),
                                  Text(
                                    '${recommended[index].packageDuration}',
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              SizedBox(height: 12),
                              Divider(
                                height: 1,
                                thickness: 1,
                                indent: 10,
                                endIndent: 10,
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5),
                                    width: MediaQuery.of(context).size.width/2.8,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                            color: kSubtitleColor,
                                            blurRadius: 1),
                                      ],
                                      borderRadius: BorderRadius.circular(6),
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
                                        '${recommended[index].package}',
                                        style: GoogleFonts.roboto(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: (){
                                      setState(() {
                                        if(isSaved) {
                                          savedWidget.remove(save);
                                          print(savedWidget.length);
                                        } else {
                                          savedWidget.add(save);
                                        }
                                      });
                                    },
                                    child: Icon(
                                      isSaved ? FontAwesomeIcons.solidBookmark : FontAwesomeIcons.bookmark,
                                      size: 25,
                                      color: isSaved ? Colors.black : null,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//
// ListView(
// padding: EdgeInsets.symmetric(horizontal: 10),
// shrinkWrap: true,
// children: [
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('${recommendedData['name']}'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// Card(
// color: Colors.blueAccent,
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(12),
// ),
// child: ExpansionTile(
// // tilePadding: EdgeInsets.all(15),
// title: Text('Ok'),
// ),
// ),
// ],
// ),
