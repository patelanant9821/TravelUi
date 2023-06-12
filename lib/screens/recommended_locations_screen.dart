import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/recommended_location_model.dart';
import 'package:travel_ui/screens/search_location_screen.dart';

class RecommendedLocations extends StatefulWidget {
  static const String id = 'RecommendedLocations()';

  const RecommendedLocations({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
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
                    builder: (context) => const SearchLocationScreen()));
          },
          child: const Icon(
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
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: SizedBox(
              height: MediaQuery.of(context).size.longestSide,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
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
                        childrenPadding:
                            const EdgeInsets.symmetric(horizontal: 12),
                        tilePadding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 5),
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
                          recommended[index].name,
                          style: kTitleStyle.copyWith(color: kBlueColor),
                        ),
                        subtitle: Text(
                          recommended[index].state,
                          style: kServiceSubtitleStyle,
                        ),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recommended[index].description,
                                style: kTravelLogContentStyle.copyWith(
                                    fontSize: 12),
                              ),
                              const SizedBox(height: 14),
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
                                    recommended[index].bestTimeToVisit,
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 8),
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
                                    recommended[index].packageDuration,
                                    style: GoogleFonts.roboto(
                                        fontSize: 13,
                                        color: Colors.grey[850],
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 12),
                              const Divider(
                                height: 1,
                                thickness: 1,
                                indent: 10,
                                endIndent: 10,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    width:
                                        MediaQuery.of(context).size.width / 2.8,
                                    decoration: BoxDecoration(
                                      boxShadow: const [
                                        BoxShadow(
                                            color: kSubtitleColor,
                                            blurRadius: 1),
                                      ],
                                      borderRadius: BorderRadius.circular(6),
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
                                        recommended[index].package,
                                        style: GoogleFonts.roboto(
                                            fontSize: 28,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        if (isSaved) {
                                          savedWidget.remove(save);
                                        } else {
                                          savedWidget.add(save);
                                        }
                                      });
                                    },
                                    child: Icon(
                                      isSaved
                                          ? FontAwesomeIcons.solidBookmark
                                          : FontAwesomeIcons.bookmark,
                                      size: 25,
                                      color: isSaved ? Colors.black : null,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
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
