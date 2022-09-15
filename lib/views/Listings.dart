// ignore: file_names
import 'package:estate_app/model/continer_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

// ignore: non_constant_identifier_names
SingleChildScrollView Listings(BuildContext context) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          children: [
            ContainerWidget(
              colour: kContainerColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: prefer_const_constructors
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Altamira Family Apartments', style: kTextStyle),
                          Text('28939 Mission Boulevard, Hayward, CA 94544',
                              style: kTextStyle2),
                        ],
                      ),
                      const Icon(Icons.bookmark_border, size: kIconSize,)
                    ],
                  ),
                  Image.asset('images/house.png',
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: double.infinity),
                  const Text(
                    '\$33,333',
                    style: kTextStyle,
                  ),
                  const Text('Application deadline: October 25th, 2021'),
                  Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.bed,
                        size: kIconSize,
                        color: kIconColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '3',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Bedroom',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.bath,
                        size: kIconSize,
                        color: kIconColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '3',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Bathroom',
                        style: kTextStyle2,
                      )
                    ],
                  )
                ],
              ),
            ),
            ContainerWidget(
              colour: kContainerColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // ignore: prefer_const_constructors
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Cypress Glen', style: kTextStyle),
                          Text('25100 Cypress Avenue Hayward CA 94544',
                              style: kTextStyle2),
                        ],
                      ),
                      const Icon(Icons.bookmark_border, size: kIconSize, color: kIconColor2,)
                    ],
                  ),
                  Image.asset('images/house2.png',
                      height: MediaQuery.of(context).size.height * 0.23,
                      width: double.infinity),
                  const Text(
                    '\$222,222',
                    style: kTextStyle,
                  ),
                  const Text('Application deadline: November 21th, 2021'),
                  Row(
                    children: const [
                      Icon(
                        FontAwesomeIcons.bed,
                        size: kIconSize,
                        color: kIconColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '3',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'Bedroom',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        FontAwesomeIcons.bath,
                        size: kIconSize,
                        color: kIconColor,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '2',
                        style: kTextStyle2,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Bathroom',
                        style: kTextStyle2,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
