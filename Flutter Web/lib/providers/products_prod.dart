import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './product.dart';

class ProductsProd with ChangeNotifier {
  List<Product> _items = [
    Product(
      title: 'microcircuit V1',
      description:
          'Es ist eine seit langem bekannte Tatsache, dass ein Leser beim Betrachten des Layouts durch den lesbaren Inhalt einer Seite abgelenkt wird. Der Punkt bei der Verwendung von Lorem Ipsum ist, dass es eine mehr oder weniger normale Verteilung von Buchstaben hat, im Gegensatz zur Verwendung von „Inhalt hier, Inhalt hier“, wodurch es wie lesbares Englisch aussieht. Viele Desktop-Publishing-Pakete und Webseiten-Editoren verwenden jetzt Lorem Ipsum als ihren Standardmodelltext, und eine Suche nach „lorem ipsum“ wird viele Websites aufdecken, die noch in den Kinderschuhen stecken. Im Laufe der Jahre haben sich verschiedene Versionen entwickelt, manchmal zufällig, manchmal absichtlich (eingespritzter Humor und dergleichen).',
      price: 26,
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEG3KmLcCzrXvkqLV968IRJvstcXfrjeaLrEIJbgalMVgknt27zXbrlX-xAe_5ujmSAZE&usqp=CAU.jpg',
      id: 'p1',
    ),
    Product(
      title: 'microcircuit V2',
      description:
          'Es ist eine seit langem bekannte Tatsache, dass ein Leser beim Betrachten des Layouts durch den lesbaren Inhalt einer Seite abgelenkt wird. Der Punkt bei der Verwendung von Lorem Ipsum ist, dass es eine mehr oder weniger normale Verteilung von Buchstaben hat, im Gegensatz zur Verwendung von „Inhalt hier, Inhalt hier“, wodurch es wie lesbares Englisch aussieht. Viele Desktop-Publishing-Pakete und Webseiten-Editoren verwenden jetzt Lorem Ipsum als ihren Standardmodelltext, und eine Suche nach „lorem ipsum“ wird viele Websites aufdecken, die noch in den Kinderschuhen stecken. Im Laufe der Jahre haben sich verschiedene Versionen entwickelt, manchmal zufällig, manchmal absichtlich (eingespritzter Humor und dergleichen).',
      price: 5.99,
      imageUrl: 'https://m.media-amazon.com/images/I/51fWBJxTvbL.jpg',
      id: 'p2',
    ),
    Product(
      title: 'microcircuit V3',
      description:
          'Es ist eine seit langem bekannte Tatsache, dass ein Leser beim Betrachten des Layouts durch den lesbaren Inhalt einer Seite abgelenkt wird. Der Punkt bei der Verwendung von Lorem Ipsum ist, dass es eine mehr oder weniger normale Verteilung von Buchstaben hat, im Gegensatz zur Verwendung von „Inhalt hier, Inhalt hier“, wodurch es wie lesbares Englisch aussieht. Viele Desktop-Publishing-Pakete und Webseiten-Editoren verwenden jetzt Lorem Ipsum als ihren Standardmodelltext, und eine Suche nach „lorem ipsum“ wird viele Websites aufdecken, die noch in den Kinderschuhen stecken. Im Laufe der Jahre haben sich verschiedene Versionen entwickelt, manchmal zufällig, manchmal absichtlich (eingespritzter Humor und dergleichen).',
      price: 8,
      imageUrl:
          'https://www.zvei.org/fileadmin/user_upload/Presse_und_Medien/Bilder_Allgemein/_processed_/0/0/csm_Elektronik-Elektrotechnik-Chip-Computer-Stromkreis-Schaltung-Platine_c4cc84a186.jpg',
      id: 'p3',
    ),
    Product(
      title: 'microcircuit V4',
      description:
          'Lorem Ipsum ist einfach Blindtext der Druck- und Satzindustrie. Lorem Ipsum ist seit den 1500er Jahren der Standard-Dummy-Text der Branche, als ein unbekannter Drucker eine Reihe von Typen nahm und daraus ein Musterbuch für Typen erstellte. Sie hat nicht nur fünf Jahrhunderte, sondern auch den Sprung in den elektronischen Satz überstanden und ist im Wesentlichen unverändert geblieben. Es wurde in den 1960er Jahren mit der Veröffentlichung von Letraset-Blättern mit Passagen von Lorem Ipsum und in jüngerer Zeit mit Desktop-Publishing-Software wie Aldus PageMaker, einschließlich Versionen von Lorem Ipsum, populär.',
      price: 4,
      imageUrl:
          'https://www.cyient.com/hubfs/2020/Blogs/cyient-asic-iso13485.jpg',
      id: 'p4',
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
