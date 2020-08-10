import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductsProvider with ChangeNotifier {
  List<Product> _items = [];
  List<Product> get items {
    return [..._items];
  }
}
