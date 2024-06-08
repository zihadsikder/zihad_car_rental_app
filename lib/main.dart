import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:zihad_car_rental/app/core/config/theme_data.dart';

import 'app/core/config/binding.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightThemData,
      getPages: AppPages.routes,
    ),
  );
}
