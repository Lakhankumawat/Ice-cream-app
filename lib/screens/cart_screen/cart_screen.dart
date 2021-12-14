import 'package:flutter/material.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = 'cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Body(),
    );
  }
}
