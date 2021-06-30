import 'dart:ui';

import 'package:ddm_website/widgets/link_button.dart';
import 'package:ddm_website/widgets/web_framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebFramework(
      childs: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10.0,
                  sigmaY: 10.0,
                ),
                child: Container(
                  width: 1024,
                  margin: const EdgeInsets.all(48.0),
                  padding: const EdgeInsets.all(48.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "DDM 下载",
                        style: context.textTheme.headline1,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "作为分布式的系统，我们提供了以下安装包：(但是windows和linux暂只提供源代码)",
                        style: context.textTheme.headline4,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "Windows: ",
                        style: context.textTheme.headline6,
                      ),
                      const LinkButton(
                          link: 'https://github.com/yang-lile/ddm'),
                      const SizedBox(height: 8.0),
                      Text(
                        "Android: ",
                        style: context.textTheme.headline6,
                      ),
                      const LinkButton(
                          link:
                              'http://niceflutter.top:19090/assets/app-armeabi-v7a-release.apk'),
                      const SizedBox(height: 8.0),
                      Text(
                        "Linux: ",
                        style: context.textTheme.headline6,
                      ),
                      const LinkButton(
                          link: 'https://github.com/yang-lile/ddm'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
