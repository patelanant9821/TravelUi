import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel_ui/constants/color_constants.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/carousel_model.dart';
import 'package:travel_ui/models/popular_destination_model.dart';
import 'package:travel_ui/models/travelogue_model.dart';
import 'offers_screen.dart';
import 'package:card_swiper/card_swiper.dart';

class HomePage extends StatefulWidget {
  static const String id = 'HomePage()';

  const HomePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: ListView(
        physics: const ClampingScrollPhysics(),
        children: <Widget>[
          // Carousel Section
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 10),
            child: Text(
              'Promos',
              style: kTitleStyle,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OfferScreen(),
                        ));
                  },
                  // ignore: sized_box_for_whitespace
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190,
                    child: Swiper(
                      onIndexChanged: (index) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                      autoplay: true,
                      layout: SwiperLayout.DEFAULT,
                      itemCount: carousels.length,
                      itemBuilder: (BuildContext context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: AssetImage(
                                carousels[index].image,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 12.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: map<Widget>(carousels, (index, image) {
                        return Container(
                          alignment: Alignment.centerLeft,
                          height: 6,
                          width: 6,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == index
                                ? kBlueColor
                                : kGreyColor,
                          ),
                        );
                      }),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const OfferScreen(),
                            ));
                      },
                      child: Text(
                        'More..',
                        style: kMoreDiscountStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Lets Book Section
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'Let\'s Book',
              style: kTitleStyle,
            ),
          ),
          Container(
            height: 144,
            margin: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: kFillColor,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: kBorderColor, width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.flight,
                              color: kBlueColor,
                              size: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Flight',
                                    style: kServiceTitleStyle,
                                  ),
                                  Text(
                                    'Feel Freedom',
                                    style: kServiceSubtitleStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: kFillColor,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: kBorderColor, width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.train_outlined,
                              color: kBlueColor,
                              size: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Trains',
                                    style: kServiceTitleStyle,
                                  ),
                                  Text(
                                    'Intercity',
                                    style: kServiceSubtitleStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: kFillColor,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: kBorderColor, width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.hotel_outlined,
                              color: kBlueColor,
                              size: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Hotel',
                                    style: kServiceTitleStyle,
                                  ),
                                  Text(
                                    'Let\'s take a Break',
                                    style: kServiceSubtitleStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.only(right: 8),
                        padding: const EdgeInsets.only(left: 16),
                        height: 64,
                        decoration: BoxDecoration(
                          color: kFillColor,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: kBorderColor, width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.car_rental,
                              color: kBlueColor,
                              size: 28,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rent Car',
                                    style: kServiceTitleStyle,
                                  ),
                                  Text(
                                    'Around the City',
                                    style: kServiceSubtitleStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Popular Destination Section
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'Popular Destination',
              style: kTitleStyle,
            ),
          ),

          // ignore: sized_box_for_whitespace
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: populars.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16, right: 16),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2.5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    height: 140,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(populars[index].image),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(12),
                              topLeft: Radius.circular(12),
                            ),
                          ),
                        ),
                        Text(
                          populars[index].name,
                          style: kPopularDestinationTitleStyle,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          populars[index].state,
                          style: kPopularDestinationSubtitleStyle,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16, top: 24, bottom: 12),
            child: Text(
              'Travelogue !',
              style: kTitleStyle,
            ),
          ),
          SizedBox(
            height: 181,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 16),
              itemCount: traveloguesData.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(right: 16.0),
                  width: 220,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 104,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: AssetImage(travelogues[index].image),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            height: 30,
                            width: 60,
                            child: SvgPicture.asset(
                              'assets/svg/imageTag.svg',
                              colorFilter: const ColorFilter.mode(
                                  kBackgroundColor, BlendMode.clear),
                              // color: kBackgroundColor,
                            ),
                          ),
                          Positioned(
                            right: 4,
                            top: 8,
                            child: SvgPicture.asset(
                              'assets/svg/TravelLogoTag.svg',
                              height: 11,
                              width: 13,
                            ),
                            // height: 10,
                            // width: 20,
                          ),
                          Positioned(
                            bottom: 2,
                            left: 32,
                            child: Text(
                              'Travelogue ${travelogues[index].name}',
                              style: kTravelLogTitleStyle,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 7.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            travelogues[index].place,
                            style: kTravelLogPlaceStyle,
                          ),
                          Text(
                            travelogues[index].content,
                            style: kTravelLogContentStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
