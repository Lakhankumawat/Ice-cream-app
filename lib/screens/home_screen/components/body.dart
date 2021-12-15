import 'package:flutter/material.dart';
import 'package:ice_cream/utils/size_config.dart';
import 'custom_card.dart';
import 'header.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(getProportionateScreenWidth(15)),
      child: Column(
        children: [
          CustomHeader(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CustomCard(
                  cardColor: Color(0xff80e6e7),
                  flavour: 'Cupid',
                  name: 'Sense',
                  price: '10',
                  desc:
                      'During a heat wave, the\nlast thing we want a cold\nbrew latte bar,on the other\nhand, is the type\nof pick-me-up we crave.',
                  image: 'assets/images/0.png',
                ),
                CustomCard(
                  cardColor: Color(0xfffccedd),
                  flavour: 'Pink',
                  name: 'Pallet',
                  price: '10',
                  desc:
                      ' It\'s more of an acquired taste,\n but bitter orange ice cream\n is my favorite flavor ever!\n Delectable is a good word to\n use when you aren\'t quite sure\n how to describe the taste,\n but you just know you like it.',
                  image: 'assets/images/1.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
