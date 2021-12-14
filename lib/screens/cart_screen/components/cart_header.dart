import 'package:flutter/material.dart';
import 'package:ice_cream/utils/size_config.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'My Cart',
      style: TextStyle(
          fontFamily: 'Lobster',
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(30)),
    );
  }
}
