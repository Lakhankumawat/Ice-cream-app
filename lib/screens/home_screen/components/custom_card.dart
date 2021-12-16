import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/utils/size_config.dart';
import 'custom_button.dart';
import 'custom_container.dart';

class CustomCard extends StatelessWidget {
  final Color? cardColor;
  final String? image;
  final String? desc;
  final String? flavour;
  final String? name;
  final Color? buttonColor;
  final String? price;
  const CustomCard(
      {Key? key,
      this.cardColor,
      this.desc,
      this.flavour,
      this.name,
      this.price,
      this.image,
      this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: (SizeConfig.screenHeight as double) * 0.60,
          width: (SizeConfig.screenWidth as double) * 0.9,
          child: CustomPaint(
            size: Size(
                SizeConfig.screenHeight as double,
                ((SizeConfig.screenWidth as double) * 0.9)
                    .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
            painter: RPSCustomPainter(canvasColor: cardColor),
          ),
        ),
        Positioned(
          top: getProportionateScreenHeight(85),
          left: getProportionateScreenWidth(130),
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
        ),
        // Positioned(
        //   top: getProportionateScreenHeight(85),
        //   right: getProportionateScreenWidth(37),
        //   child: GestureDetector(
        //     onTap: () => print('Do Something'),
        //     child: CustomPaint(
        //       size: Size(160, 110),
        //       painter: CustomButton(),
        //     ),
        //   ),
        // ),
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
                      Text(
                        flavour as String,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(18)),
                      ),
                      SizedBox(
                        width: getProportionateScreenWidth(50),
                      ),
                      Text(
                        '\$$price',
                        style: TextStyle(
                            fontFamily: 'Lobster',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: getProportionateScreenWidth(18)),
                      ),
                    ],
                  ),
                  Text(
                    name as String,
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenWidth(17)),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  SizedBox(
                    height: 100,
                    width: 170,
                    child: Text(
                      desc as String,
                      maxLines: 7,
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        letterSpacing: 1,
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(10),
                  ),
                  ElevatedButton(
                    child: Text(
                      'Order',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      primary: buttonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12), // <-- Radius
                      ),
                    ),
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
