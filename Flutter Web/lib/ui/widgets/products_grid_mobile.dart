import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/products_prod.dart';
import './product_item.dart';

class ProductsGridMobile extends StatelessWidget {
  final bool showFavs;

  ProductsGridMobile(this.showFavs);

  @override
  Widget build(BuildContext context) {
    /*Chngd*/
    final productsData = Provider.of<ProductsProd>(context);
    final products = showFavs ? productsData.favoriteItems : productsData.items;
    return ListView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
        // builder: (c) => products[i],
        value: products[i],
        child: ProductItem(
          products[i].id,
          products[i].title,
          products[i].imageUrl,
        ),
      ),
    );
  }
}
