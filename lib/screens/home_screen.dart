import 'package:flutter/material.dart';
import 'package:online_shop_ui_flutter/components/body.dart';
import 'package:online_shop_ui_flutter/support/appbar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }
}
