import 'package:ecommerce/model/product.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  List<Product> _products = [];
  double _totalAmount = 0;
  int _totalitems = 0;

  void add(Product product) {
    _products.add(product);
    _totalitems++;
    _totalAmount = _totalAmount + product.price;
    notifyListeners();
  }

  void remove(Product product) {
    _products.remove(product);
    _totalAmount = _totalAmount - product.price;
    _totalitems = _totalitems--;
    notifyListeners();
  }

  int get totalItems {
    return _totalitems;
  }

  double get totalAmount {
    return _totalAmount;
  }

  List<Product> get products {
    return _products;
  }
}
