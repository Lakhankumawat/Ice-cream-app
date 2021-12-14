import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/utils/constants.dart';
import 'package:ice_cream/utils/size_config.dart';

class CartItemWidget extends StatefulWidget {
  final Color? bgColor;
  final String? image;
  final String? flavour;
  final String? name;
  final String? price;
  const CartItemWidget(
      {Key? key, this.bgColor, this.image, this.name, this.price, this.flavour})
      : super(key: key);

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[600] as Color,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: widget.bgColor,
              ),
              child: Image.asset(
                widget.image as String,
                height: getProportionateScreenHeight(100),
                width: getProportionateScreenWidth(100),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.flavour as String,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '${widget.name}\n\$${widget.price}',
                  style: TextStyle(
                      fontFamily: 'Lobster',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: getProportionateScreenWidth(15)),
                ),
              ],
            ),
            Text(
              '3',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w600,
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.plus,
                    size: 14,
                    color: Color(0xff05293d),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 3.0,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.minus,
                    size: 14,
                    color: Color(0xff05293d),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: CircleBorder(),
                    elevation: 2.0,
                  ),
                )
                // IconButton(
                //   onPressed: () {},
                //   iconSize: 14,
                //   color: Color(0xff05293d),
                //   icon: Icon(FontAwesomeIcons.minus),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
