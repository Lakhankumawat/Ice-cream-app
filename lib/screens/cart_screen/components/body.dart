import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream/utils/constants.dart';
import 'cart_header.dart';
import 'cart_items.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final flavourList = ['Cupid', 'Pink', 'Tango', 'Mild'];
  final List<String> priceList = ['12', '10', '10', '10'];
  final List<String> nameList = ['Sense', 'Pallet', 'Mango', 'Lemonade'];
  final title = 'Swipe to Dismiss';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CartHeader(),
            ListView.builder(
              itemCount: flavourList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Dismissible(
                  // Specify the direction to swipe and delete
                  direction: DismissDirection.endToStart,
                  key: Key(flavourList[index]),
                  onDismissed: (direction) {
                    // Removes that item the list on swipwe
                    setState(() {
                      flavourList.removeAt(index);
                    });
                    // Shows the information on Snackbar
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("${flavourList[index]} dismissed")));
                  },
                  background: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Spacer(),
                        Container(
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Color(0xff05293d),
                            ),
                            child: Icon(
                              FontAwesomeIcons.trashAlt,
                              color: Colors.white,
                              size: 18,
                            )),
                      ],
                    ),
                  ),
                  child: CartItemWidget(
                    bgColor: colorList[index],
                    image: 'assets/images/$index.png',
                    flavour: flavourList[index],
                    name: nameList[index],
                    price: priceList[index],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
