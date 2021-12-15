import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/utils/size_config.dart';

import 'custom_container.dart';

class CustomCard extends StatelessWidget {
  final Color? cardColor;
  final String? image;
  final String? desc;
  final String? flavour;
  final String? name;
  final String? price;
  const CustomCard(
      {Key? key,
      this.cardColor,
      this.desc,
      this.flavour,
      this.name,
      this.price,
      this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Positioned(
        //   top: getProportionateScreenHeight(4),
        //   left: getProportionateScreenWidth(3),
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     child: Icon(
        //       FontAwesomeIcons.solidHeart,
        //       size: 15,
        //     ),
        //     style: ElevatedButton.styleFrom(
        //       shape: CircleBorder(),
        //     ),
        //   ),
        // ),
        SizedBox(
          height: (SizeConfig.screenHeight as double) * 0.60,
          width: (SizeConfig.screenWidth as double) * 0.8,
          child: CustomPaint(
            size: Size(
                SizeConfig.screenWidth as double,
                ((SizeConfig.screenWidth as double) * 0.9)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(canvasColor: cardColor),
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(85),
          left: getProportionateScreenWidth(104),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
              boxShadow: [
                BoxShadow(
                  color: Colors.pink.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              FontAwesomeIcons.solidHeart,
              size: 15,
              color: Colors.white,
            ),
          ),
          // child: ElevatedButton(
          //   onPressed: () {},
          //   child: Icon(
          //     FontAwesomeIcons.solidHeart,
          //     size: 15,
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     shape: CircleBorder(),
          //     boxShadow: [
          //       BoxShadow(
          //         color: Colors.grey.withOpacity(0.5),
          //         spreadRadius: 5,
          //         blurRadius: 7,
          //         offset: Offset(0, 3), // changes position of shadow
          //       ),
          //     ],
          //   ),
          // ),
        ),
        Positioned(
          top: getProportionateScreenHeight(100),
          right: 90,
          child: ElevatedButton(
            onPressed: () {},
            child: Icon(
              FontAwesomeIcons.plus,
              size: 15,
              color: Colors.black,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              elevation: 0.0,
              shape: CircleBorder(),
            ),
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(160),
          child: Row(
            children: [
              Material(
                color: Colors.transparent,
                child: SizedBox(
                  height: getProportionateScreenHeight(200),
                  child: Image.asset(
                    image as String,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(flavour as String),
                      Text('\$$price'),
                    ],
                  ),
                  Text(
                    name as String,
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(15)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  Text(
                    desc as String,
                    maxLines: 5,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      letterSpacing: 1,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
