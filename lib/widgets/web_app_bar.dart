import 'package:ddm_website/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({
    Key? key,
    required this.outWidth,
    required this.outSizedBox,
  }) : super(key: key);

  final double outWidth;
  final Widget outSizedBox;

  @override
  Widget build(BuildContext context) {
    List appBarItem = const [
      SizedBox(width: 25.0),
      Text("DDM 助手"),
      Spacer(),
      WebAppBarItem(title: "首页", aimRoute: Routes.home),
      WebAppBarItem(title: "文档", aimRoute: Routes.docs),
      WebAppBarItem(title: "下载", aimRoute: Routes.download),
      WebAppBarItem(title: "关于", aimRoute: Routes.about),
    ];
    return SliverAppBar(
      flexibleSpace: Padding(
        padding: EdgeInsets.symmetric(horizontal: outWidth / 2),
      ),
      pinned: true,
      forceElevated: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          outSizedBox,
          ...appBarItem,
          outSizedBox,
        ],
      ),
    );
  }
}

class WebAppBarItem extends StatelessWidget {
  const WebAppBarItem({
    Key? key,
    required this.title,
    required this.aimRoute,
  }) : super(key: key);
  final String title;
  final String aimRoute;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            textStyle:
                MaterialStateProperty.all(const TextStyle(fontSize: 18.0)),
            minimumSize: MaterialStateProperty.all(const Size(150.0, 150)),
            backgroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.hovered) &&
                    !states.contains(MaterialState.pressed)) {
                  return Colors.white38;
                } else if (states.contains(MaterialState.pressed)) {
                  return Colors.white38;
                }
              },
            ),
          ),
        ),
      ),
      child: TextButton(
        onPressed: () => Get.offNamed(aimRoute),
        child: Text(title),
      ),
    );
  }
}
