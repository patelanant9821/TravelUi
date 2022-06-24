import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/favorite_model.dart';

class WatchListScreen extends StatelessWidget {
  static const String id = 'WatchListScreen()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/profile-background.jpg'),
                    fit: BoxFit.cover
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                child: SizedBox(
                  height: MediaQuery.of(context).size.longestSide,
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) => Divider(
                      height: 0,
                      thickness: 0,
                    ),
                    itemCount: favorite.length,
                    itemBuilder: (context, index) {

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
                            initiallyExpanded: true,
                            childrenPadding: EdgeInsets.symmetric(horizontal: 12),
                            tilePadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                            leading: Container(
                              width: 98,
                              alignment: AlignmentDirectional.centerStart,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: AssetImage(favorite[index].image),
                                  )),
                            ),
                            title: Text(
                              '${favorite[index].name}',
                              style: kTitleStyle.copyWith(color: kBlueColor),
                            ),
                            subtitle: Text(
                              '${favorite[index].state}',
                              style: kServiceSubtitleStyle,
                            ),
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${favorite[index].description}',
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
                                        '${favorite[index].bestTimeToVisit}',
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
                                        '${favorite[index].packageDuration}',
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
                                    MainAxisAlignment.center,
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
                                            '${favorite[index].package}',
                                            style: GoogleFonts.roboto(
                                                fontSize: 28,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w700),
                                          ),
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
          ],
        ),
      ),
    );
  }
}
