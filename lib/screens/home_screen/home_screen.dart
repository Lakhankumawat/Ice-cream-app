import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/screens/profile/profile_screen.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Body()),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) {
            setState(() => _currentIndex = index);
            if (index == 3) {
              Navigator.of(context).pushNamed(ProfileScreen.routeName);
            }
          },
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
