import 'package:get/get.dart';
import 'package:my_portfolio/ui/pages/home/product_detail_screen.dart';
import 'package:my_portfolio/ui/pages/notfound/notfound.view.dart';

import '../ui/pages/contact/contactme.view.dart';
import '../ui/pages/home/home.view.dart';

class AppPages {
  AppPages._();

  static const home = "/";
  static const productDetailScreen = "/product-detail";
  static const contact = "/contact";
  static const notfound = "/notfound";

  static const INITIAL = home;

  static final routes = [
    GetPage(
      name: home,
      page: () => HomeView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: productDetailScreen,
      page: () => ProductDetailScreen(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: contact,
      page: () => ContactMeView(),
      transition: Transition.noTransition,
    ),
    GetPage(
      name: notfound,
      page: () => NotFoundView(),
      transition: Transition.noTransition,
    ),
  ];
}
