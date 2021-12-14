import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/utils/constants.dart';
import 'package:ice_cream/utils/size_config.dart';
import 'package:ice_cream/screens/cart_screen/cart_screen.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'PopSicle',
              style: TextStyle(
                  fontFamily: 'Lobster',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: getProportionateScreenWidth(30)),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(CartScreen.routeName);
              },
              icon: Icon(FontAwesomeIcons.shoppingBag),
              color: kDisableButtonColor,
            ),
          ],
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Text(
          'People who love to eat are always the best people...',
          maxLines: 2,
          style: TextStyle(
            fontFamily: 'Roboto',
            letterSpacing: 1.5,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(
          height: getProportionateScreenHeight(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Popsicle',
                  style: TextStyle(
                      color: Colors.pink, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.fiber_manual_record, color: Colors.pink, size: 12),
              ],
            ),
            Text(
              'Cookies',
              style: TextStyle(
                  color: kDisableButtonColor, fontWeight: FontWeight.bold),
            ),
            Text(
              'Snacks',
              style: TextStyle(
                  color: kDisableButtonColor, fontWeight: FontWeight.bold),
            ),
            Icon(
              FontAwesomeIcons.sortAlphaDown,
              color: kDisableButtonColor,
            ),
          ],
        ),
      ],
    );
  }
}
