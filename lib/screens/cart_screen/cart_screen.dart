import 'package:flutter/material.dart';
import 'package:ice_cream/screens/cart_screen/components/checkout.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  static String routeName = 'cart-screen';
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }
}
