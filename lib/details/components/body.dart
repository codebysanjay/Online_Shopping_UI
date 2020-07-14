import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop_ui_flutter/components/product_title_with_image.dart';
import 'package:online_shop_ui_flutter/constants.dart';
import 'package:online_shop_ui_flutter/details/components/add_to_cart.dart';
import 'package:online_shop_ui_flutter/details/components/counter_with_fav_btn.dart';
import 'package:online_shop_ui_flutter/models/product.dart';

import 'Description.dart';
import 'color_and_size.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  margin: EdgeInsets.only(top: size.height * 0.35),
//                  height: size.height * 0.6,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      CounterWithFavBtn(),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
