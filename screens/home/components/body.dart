import 'package:ecommerceui/components/product_card.dart';
import 'package:ecommerceui/models/Product.dart';
import 'package:ecommerceui/screens/home/components/section_title.dart';
import 'package:flutter/material.dart';
import '../../../size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(

        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            DiscountBanner(),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            RegularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}



//  Regular Products page //

class RegularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
          EdgeInsets.symmetric(vertical: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "    Regular Products",
              press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(product: demoProducts[index]);

                  return SizedBox.shrink(); // here by default width and height is 0
                },
              ),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        )
      ],
    );
  }
}


