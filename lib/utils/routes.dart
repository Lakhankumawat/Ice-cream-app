import 'package:flutter/cupertino.dart';
import 'package:ice_cream/screens/welcome_screen/welcome_screen.dart';
import 'package:ice_cream/screens/home_screen/home_screen.dart';
import 'package:ice_cream/screens/cart_screen/cart_screen.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  CartScreen.routeName: (context) => CartScreen(),
};
