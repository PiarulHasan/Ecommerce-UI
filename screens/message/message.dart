import 'package:ecommerceui/components/coustom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';

class Message extends StatelessWidget {
  static String routeName = "/Message";
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
        "Message continue",
        style: TextStyle(color: Colors.white, fontSize: 24),
      )),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
