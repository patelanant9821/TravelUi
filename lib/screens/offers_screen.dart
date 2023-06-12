import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_ui/constants/style_constant.dart';
import 'package:travel_ui/models/carousel_model.dart';
import 'package:travel_ui/screens/home.dart';

class OfferScreen extends StatelessWidget {
  static const String id = 'OfferScreen()';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: Icon(
                      FontAwesomeIcons.chevronLeft,
                      color: Colors.black,
                      size: 19,
                    ),
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Promos',
                    style: kScreenTitleStyle.copyWith(fontSize: 19),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: carouselsData.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 118, 117, 117),
                            offset: Offset(2.5, 1),
                            blurRadius: 5,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            carousels[index].image,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
