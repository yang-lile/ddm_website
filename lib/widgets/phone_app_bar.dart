import 'package:ddm_website/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PhoneAppBar extends StatelessWidget {
  const PhoneAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      title: Text("DDM 助手"),
      actions: [
        PhoneAppBarItem(title: "首页", aimRoute: Routes.home),
        PhoneAppBarItem(title: "文档", aimRoute: Routes.docs),
        PhoneAppBarItem(title: "下载", aimRoute: Routes.download),
        PhoneAppBarItem(title: "关于", aimRoute: Routes.about),
      ],
    );
  }
}

class PhoneAppBarItem extends StatelessWidget {
  const PhoneAppBarItem({
    Key? key,
    required this.title,
    required this.aimRoute,
  }) : super(key: key);
  final String title;
  final String aimRoute;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => Get.offNamed(aimRoute),
      child: Text(title),
    );
  }
}
