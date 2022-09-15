import 'package:estate_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomIcons extends StatefulWidget {
  const BottomIcons({super.key});

  @override
  State<BottomIcons> createState() => _BottomIconsState();
}

class _BottomIconsState extends State<BottomIcons> {
  int _selectedIndex = 0;

   void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return ClipRRect(
      borderRadius: kBottomNavBarDecoration,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height:  77.0,
          width: double.infinity,
          child: BottomNavigationBar(
            backgroundColor: const Color(0xffFFFFFF),
              elevation: 1,
              type: BottomNavigationBarType.shifting,
              unselectedItemColor: const Color(0xffAAB6B3),
              currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu, color:kIconColor),
                    label: 'Housing List',
                    backgroundColor: Colors.white
                    ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.house, color: kIconColor),
                    label: 'My Application',
                    backgroundColor: Color(0xffFFFFFF)),
                BottomNavigationBarItem(
                    icon: Icon(FontAwesomeIcons.bookmark, color:kIconColor),
                    label: 'Saved',
                    backgroundColor: Color(0xffFFFFFF)),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person, color:kIconColor),
                    label: 'AccountSettings',
                    backgroundColor:Color(0xffFFFFFF) )
              ],
              ),
        ),
      ),
    );
  }
}
