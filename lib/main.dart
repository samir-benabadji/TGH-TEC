import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tgh_tec/providers/cart.dart';
import 'package:tgh_tec/providers/orders.dart';
import 'package:tgh_tec/providers/products_prod.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'app/apppages.dart';
import 'app/theme.dart';
import 'ui/pages/notfound/notfound.view.dart';

void main() {
  // setPathUrlStrategy();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(
          value: Cart(),
        ),
        ChangeNotifierProvider.value(
          value: Orders(),
        ),
        ChangeNotifierProvider.value(
          value: ProductsProd(),
        ),
    ],
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        return new Theme(
          data: MyTheme.getTheme(MediaQuery.of(context).size),
          child: child!,
        );
      },
      // home: NotFoundView(),
      initialRoute: AppPages.home,
  
      getPages: AppPages.routes,
  
      // onUnknownRoute: (_) {
      //   print('onUnknownRoute');
      //   Get.snackbar('Hi', 'i am a modern snackbar');
      // },
      // unknownRoute: GetPage(name: '/notfound', page: () => NotFoundView()),
    ),
  ));
}
