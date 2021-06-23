import 'package:ddm_website/widgets/web_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WebFramework extends StatelessWidget {
  const WebFramework({Key? key, required this.childs}) : super(key: key);
  final List<Widget> childs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xff69ff97).withOpacity(0.1),
              const Color(0xff00e4ff),
            ],
          ),
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double outWidth = 0;
            if (constraints.maxWidth > 1024) outWidth = Get.width - 1024;
            Widget outSizedBox = SizedBox(
              width: outWidth / 2,
            );

            return CustomScrollView(
              slivers: [
                WebAppBar(outWidth: outWidth, outSizedBox: outSizedBox),
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: outWidth / 2,
                  ),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate(
                      childs,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
