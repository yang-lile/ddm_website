import 'package:flutter/material.dart';

main(List<String> args) => runApp(const MainPage(Key("qweqwe")));

class MainPage extends StatelessWidget {
  const MainPage(Key key) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text("123")),
      ),
    );
  }
}
