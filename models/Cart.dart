import 'Product.dart';


class Cart {
  final Product product;
  final int numOfItem;

  Cart({this.product, this.numOfItem});
}

// Demo data for our cart

List<Cart> demoCarts = [
  Cart(product: demoProducts[0], numOfItem: 2),
  Cart(product: demoProducts[1], numOfItem: 1),
  Cart(product: demoProducts[3], numOfItem: 1),
  Cart(product: demoProducts[4], numOfItem: 1),
];
