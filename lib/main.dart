import 'package:ddm_website/routes/app_pages.dart';
import 'package:ddm_website/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'DDM',
      theme: appThemeData,
      initialRoute: Routes.home,
      getPages: AppPages.pages,
    );
  }
}
