import 'package:flutter/material.dart';
import 'package:ice_cream/screens/home_screen/home_screen.dart';
import 'package:ice_cream/utils/constants.dart';
import 'package:ice_cream/utils/size_config.dart';
import 'components/body.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = 'welcome-screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(HomeScreen.routeName);
        },
        tooltip: 'Explore',
        child: const Icon(
          FontAwesomeIcons.arrowRight,
          size: 20,
        ),
      ),
    );
  }
}
