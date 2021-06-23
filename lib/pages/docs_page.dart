import 'dart:ui';

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
                  margin: const EdgeInsets.symmetric(vertical: 48.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            const Text("data"),
          ],
        ),
      ],
    );
  }
}
