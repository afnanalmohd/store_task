import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product/core/routes/route.dart';
import 'core/theme/controller/theme_controller.dart';
import 'core/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Fake Store API Demo',
      themeMode: ThemeController().themeDataGet,
      theme: ThemeApp.lightTheme,
      darkTheme: ThemeApp.darkTheme,
      initialRoute:Routes.homeScreen,
      getPages:AppRoutes.routes,
    );
  }
}
