import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoopy/usages/Strings.dart';

import 'category.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            imageLocation: 'assets/cats/tshirt.png',
            imageCaption: Strings.CATEGORY_SHIRT,
          ),
          Category(
            imageLocation: 'assets/cats/dress.png',
            imageCaption: Strings.CATEGORY_DRESSES,
          ),
          Category(
            imageLocation: 'assets/cats/formal.png',
            imageCaption: Strings.CATEGORY_FORMAL,
          ),
          Category(
            imageLocation: 'assets/cats/informal.png',
            imageCaption: Strings.CATEGORY_INFORMAL,
          ),
          Category(
            imageLocation: 'assets/cats/jeans.png',
            imageCaption: Strings.CATEGORY_PANTS,
          ),
          Category(
            imageLocation: 'assets/cats/shoe.png',
            imageCaption: Strings.CATEGORY_SHOES,
          ),
          Category(
            imageLocation: 'assets/cats/accessories.png',
            imageCaption: Strings.CATEGORY_ACCESSORIES,
          ),
        ],
      ),
    );
  }
}
