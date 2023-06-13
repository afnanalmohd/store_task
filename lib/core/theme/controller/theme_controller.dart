import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../constants/keys.dart';



class ThemeController {
  final GetStorage boxStorage = GetStorage();


  saveThemeDataInBox(bool isDark) {
    boxStorage.write(AppKeys.darkKey, isDark);
  }

  bool getThemeDataFromBox() {
    return boxStorage.read<bool>(AppKeys.darkKey) ?? false;
  }

  ThemeMode get themeDataGet =>
      getThemeDataFromBox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDataFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFromBox());
  }
}
