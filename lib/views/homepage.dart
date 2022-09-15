import 'package:estate_app/constants.dart';
import 'package:estate_app/views/Listings.dart';
import 'package:estate_app/Widget/bottom_icons.dart';
import 'package:estate_app/views/maps.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const List<Tab> _tabs = <Tab>[
  Tab(
    child: Text(
      'Listings',
      style: kTextStyle,
    ),
  ),
  Tab(
    child: Text(
      'Map',
      style: kTextStyle,
    ),
  ),
];

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: kAppbarColor,
            elevation: 0.0,
            actions: const [
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  FontAwesomeIcons.sliders,
                  color: kIconColor2,
                  size: kIconSize,
                ),
              ),
            ],
            // ignore: prefer_const_constructors
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: const TabBar(
                      //controller: _controller,
                      indicatorColor: Color(0xff00853F),
                      indicatorWeight: 4.0,
                      tabs: _tabs),
                ),
              ),
            )),
        
        
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xff3b3d58),
            primaryColor: Colors.white,
            textTheme: Theme.of(context)
                .textTheme
                .copyWith(caption: const TextStyle(color: Colors.grey)),
          ),
          child: const BottomIcons(),
        ),
        body: Center(
          child: TabBarView(
            children: [
              Listings(context),
              MapView(context),
            ],
          ),
        ),
      ),
    );
  }
}



// Container(
//                 margin: EdgeInsets.all(10),
//                 padding: EdgeInsets.all(8.0),
//                  width: 251.0,
//                 height: 42.0,
//                 decoration: kTextfieldContiner,
//                 child: Row(
//                   children: const [
//                     Icon(
//                       Icons.search,
//                       color: kIconColor,
//                       size: kIconSize,
//                     ),
//                     Expanded(
//                       child: TextField(
//                           style: TextStyle(color: Colors.black),
//                           decoration: kTextFieldInputDecoration),
//                     ),
//                   ],
//                 ),
//               ),