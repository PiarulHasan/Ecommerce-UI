import 'package:ecommerceui/components/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class Bellnotifi extends StatelessWidget {
  static String routeName = "/Bellnotifi";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context, true);
            }),
      ),
      body: Center(
          child: Text(
        "All Notification Hear!",
        style: TextStyle(color: Colors.white, fontSize: 24),
      )),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
