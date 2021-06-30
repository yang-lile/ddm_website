import 'dart:ui';

import 'package:ddm_website/widgets/link_button.dart';
import 'package:ddm_website/widgets/web_framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DocsPage extends StatelessWidget {
  const DocsPage({Key? key}) : super(key: key);

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
                  constraints: BoxConstraints(
                    maxHeight: Get.height - 56 - 48 * 2,
                  ),
                  margin: const EdgeInsets.all(48.0),
                  padding: const EdgeInsets.all(48.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                  ),
                  child: ListView(
                    children: [
                      Text(
                        "DDM 说明文档",
                        style: context.textTheme.headline1,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "使用方法：",
                        style: context.textTheme.headline4,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "在下方链接中，选择适合你的操作系统的软件并下载安装。",
                        style: context.textTheme.headline5,
                      ),
                      const SizedBox(height: 8.0),
                      const LinkButton(
                        link: 'http://niceflutter.top:19090/#/download',
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "使用手册",
                        style: context.textTheme.headline5,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        """首先要明白一个原理，软件依赖网络上获取到的规则，但绝对不会上传用户信息。
所以当我们拿到规则后会在本地解析，这个时候软件分为了“数据中心”和“商店”两个部分。商店负责获取规则，由您的喜好自由选择添加。
而数据中心负责由规则作为模板，存储固定用途的数据，或者索引目录中的一个位置，最后整合起来呈现给用户。""",
                        style: context.textTheme.bodyText2,
                      ),
                      const SizedBox(height: 8.0),
                      Row(children: [
                        Image.asset(
                          'assets/flutter_01.png',
                          width: 1024 / 3,
                        ),
                        const SizedBox(width: 8.0),
                        Image.asset(
                          'assets/flutter_02.png',
                          width: 1024 / 3,
                        ),
                      ]),
                      const SizedBox(height: 8.0),
                      Image.asset('assets/flutter_04.png'),
                      const SizedBox(height: 8.0),
                      Image.asset('assets/flutter_05.png'),
                      const SizedBox(height: 8.0),
                      Text(
                        "商店中的规则可以点击展开，查看详情信息",
                        style: context.textTheme.bodyText2,
                      ),
                      const SizedBox(height: 8.0),
                      Image.asset('assets/flutter_06.png'),
                      const SizedBox(height: 8.0),
                      Text(
                        "导航栏中间是规则编辑的按钮，用于给用户自己生成规则，并且将在未来支持github帐号登录上传自己制作的规则。",
                        style: context.textTheme.bodyText2,
                      ),
                      const SizedBox(height: 8.0),
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
