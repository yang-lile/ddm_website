import 'dart:ui';

import 'package:ddm_website/widgets/link_button.dart';
import 'package:ddm_website/widgets/web_framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
                  margin: const EdgeInsets.symmetric(vertical: 48.0),
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
                        "关于我们",
                        style: context.textTheme.headline1,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "本项目保持开源共享的态度，希望和大家共同建设，以下是我们的 github 开源地址：",
                        style: context.textTheme.bodyText2,
                      ),
                      const LinkButton(
                          link: "https://github.com/yang-lile/ddm"),
                      const SizedBox(height: 8.0),
                      Text(
                        "DDM 同样也保持了版权归属原则，本项目的所有代码都必须遵循 GPL v3，具体细节请查看：",
                        style: context.textTheme.bodyText2,
                      ),
                      const LinkButton(
                          link:
                              "https://github.com/yang-lile/ddm/blob/main/LICENSE"),
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
