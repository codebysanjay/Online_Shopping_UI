import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/back.svg'),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/search.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'assets/icons/cart.svg',
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
