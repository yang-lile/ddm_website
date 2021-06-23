import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkButton extends StatefulWidget {
  const LinkButton({Key? key, required this.link}) : super(key: key);
  final String link;

  @override
  State<LinkButton> createState() => _LinkButtonState();
}

class _LinkButtonState extends State<LinkButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async => await canLaunch(widget.link)
          ? await launch(widget.link)
          : ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("不可链接"),
              ),
            ),
      child: Text(widget.link),
    );
  }
}
