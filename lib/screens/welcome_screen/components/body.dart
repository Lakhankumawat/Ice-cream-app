import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ice_cream/utils/constants.dart';
import 'package:ice_cream/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: const [
          Color(0xfffccedc),
          Color(0xffdc90a8),
        ],
      )),
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(15)),
        child: Container(
          padding:
              EdgeInsets.symmetric(vertical: getProportionateScreenHeight(15)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(55),
            color: kPrimaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/minipopsicle-1.svg',
                        height: getProportionateScreenHeight(52),
                        width: getProportionateScreenWidth(50),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(10),
                    ),
                    Text(
                      'PopSicle',
                      style: TextStyle(
                          fontFamily: 'Lobster',
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: getProportionateScreenWidth(30)),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(20),
                    ),
                    Text(
                      'Order your favourite dessert and snacks anytime anywhere. Explore the delicious varieties here...',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Container(
                width: getProportionateScreenWidth(300),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/choco-vanilla.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
