import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/body.dart';

class ProfileScreen extends StatefulWidget {
  static String routeName = 'profile-screen';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Body(),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() => _currentIndex = index),
          items: [
            BottomNavyBarItem(
              icon: Icon(FontAwesomeIcons.home),
              title: Text('Home'),
              activeColor: Colors.red,
            ),
            BottomNavyBarItem(
                icon: Icon(FontAwesomeIcons.heart),
                title: Text('Fav'),
                activeColor: Colors.purpleAccent),
            BottomNavyBarItem(
                icon: Icon(FontAwesomeIcons.search),
                title: Text('Search'),
                activeColor: Colors.pink),
            BottomNavyBarItem(
                icon: Icon(FontAwesomeIcons.solidUser),
                title: Text('User'),
                activeColor: Colors.blue),
          ],
        ));
  }
}
