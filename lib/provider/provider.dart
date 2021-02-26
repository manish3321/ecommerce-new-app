import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _products = [];
  double _total = 0;
  int _totalitems = 0;

  void add(Product product) {
    _products.add(product);
    _totalitems = _totalitems++;
    _total = _total + product.price;
  }

  void remove(Product product) {
    _products.remove(product);
    _total = _total - product.price;
    _totalitems = _totalitems--;
  }
}
