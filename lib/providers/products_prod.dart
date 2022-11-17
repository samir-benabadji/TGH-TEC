import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './product.dart';

class ProductsProd with ChangeNotifier {
  List<Product> _items = [
    Product(
      description: 'Green SS watch',
      title: 'Watch',
      price: 26,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEG3KmLcCzrXvkqLV968IRJvstcXfrjeaLrEIJbgalMVgknt27zXbrlX-xAe_5ujmSAZE&usqp=CAU.jpg',
      id: 'p1',
    ),
    Product(
      description: 'Green Neon T-Shirt',
      title: 'T-Shirt',
      price: 5.99,
      imageUrl:
          'https://3cz4nq39qkfd430js5dngn2z-wpengine.netdna-ssl.com/wp-content/uploads/2022/03/microcircuit-with-chip-close-up-with-neon-lighting-chip-shortage_t20_PJZGlB-1.jpg',
      id: 'p2',
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }
  void deleteProduct(String id) {
    final existingProductIndex = _items.indexWhere((prod) => prod.id == id);
    var existingProduct = _items[existingProductIndex];
    _items.removeAt(existingProductIndex);
    notifyListeners();
    // existingProduct = null;
  }

  void updateProduct(String id, Product newProduct) {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      _items[prodIndex] = newProduct;
      notifyListeners();
    }
  }

  void addProduct(Product product) {
    final newProduct = Product(
      title: product.title,
      description: product.description,
      price: product.price,
      imageUrl: product.imageUrl,
      id: DateTime.now().toString(),
    );
    _items.add(newProduct);
    // _items.insert(0, newProduct); // at the start of the list
    notifyListeners();
  }
}
