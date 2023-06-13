import 'package:get/get.dart';
import 'package:product/features/categories/view/screen/CategoriesScreen.dart';
import 'package:product/features/store/view/screen/home_screen.dart';
import '../binding/product_binding.dart';


class AppRoutes {
  static final routes = [
    GetPage(
      name: Routes.homeScreen,
      page: () => HomeScreen(),
      binding:ProductBinding(),
    ),
    GetPage(
      name: Routes.categoriesScreen,
      page: () => CategoriesScreen(),
      binding:ProductBinding(),
    ),
  ];
}

class Routes {
  static const homeScreen = '/home_screen';
  static const categoriesScreen = '/Categories_screen';
}
