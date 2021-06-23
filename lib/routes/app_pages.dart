import 'package:ddm_website/pages/about_page.dart';
import 'package:ddm_website/pages/docs_page.dart';
import 'package:ddm_website/pages/download_page.dart';
import 'package:ddm_website/pages/home_page.dart';
import 'package:get/get.dart';
part './app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.home, page: () => const HomePage()),
    GetPage(name: Routes.download, page: () => const DownloadPage()),
    GetPage(name: Routes.docs, page: () => const DocsPage()),
    GetPage(name: Routes.about, page: () => const AboutPage()),
  ];
}
