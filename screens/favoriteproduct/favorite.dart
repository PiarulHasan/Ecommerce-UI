import 'package:ecommerceui/components/coustom_bottom_nav_bar.dart';
import 'package:ecommerceui/components/product_card.dart';
import 'package:ecommerceui/models/Product.dart';
import 'package:ecommerceui/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';

import '../../enums.dart';
import '../../size_config.dart';

class Favoriteproduct extends StatelessWidget {
  static String routeName = "/Favoriteproduct";
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
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20)),
            child: SectionTitle(title: "Favorite Products", press: () {}),
          ),
          SizedBox(height: getProportionateScreenWidth(20)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) {
                    if (demoProducts[index].isPopular)
                      return ProductCard(product: demoProducts[index]);

                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
