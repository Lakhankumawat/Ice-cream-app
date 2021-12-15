import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  //PageController? _pageController;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: Body()),
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: _selectedIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            _selectedIndex = index;
            // _pageController!.animateToPage(index,
            //     duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
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
