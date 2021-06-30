import 'dart:ui';

import 'package:ddm_website/widgets/web_framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

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
                        "DDM 介绍",
                        style: context.textTheme.headline1,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "DDM (Decentralized data management) is Integrate user data, unified management, easy to share, easy to encrypt and save, easy to synchronize. Easy to manager data to be the master of data.",
                        style: context.textTheme.bodyText2,
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        "DDM 即去中心化数据管理系统，是一个用于整合用户数据、有统一管理、轻松分享、轻松加密保存、轻松同步的特点。使用户易于管理数据，成为数据的主人。",
                        style: context.textTheme.bodyText2,
                      ),
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
