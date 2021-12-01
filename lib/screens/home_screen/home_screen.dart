import 'package:flutter/material.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Body()),
    );
  }
}
