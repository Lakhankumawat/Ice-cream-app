import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_container.dart';
import 'package:ice_cream/utils/size_config.dart';
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
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: 165,
                  left: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                // Align(
                //   alignment: Alignment.topCenter,
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
                Container(
                  height: (SizeConfig.screenHeight as double) * 1,
                  width: (SizeConfig.screenWidth as double) * 2,
                  child: CustomPaint(
                    size: Size(
                        SizeConfig.screenWidth as double,
                        ((SizeConfig.screenWidth as double) *
                                0.5833333333333334)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                ),
                Positioned(
                  top: 165,
                  left: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      FontAwesomeIcons.solidHeart,
                      size: 15,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                Positioned(
                  top: 200,
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
                  top: 240,
                  left: 0,
                  child: Row(
                    children: [
                      Container(
                        width: getProportionateScreenWidth(133),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset('assets/images/homecontainer.png'),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text('Cupid'),
                              Text('\$10'),
                            ],
                          ),
                          Text(
                            'Sense',
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
                            'During a heat wave, the\nlast thing we want a cold\nbrew latte bar,on the other\nhand, is the type\nof pick-me-up we crave.',
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
            ),
          ),
        ],
      ),
    );
  }
}
