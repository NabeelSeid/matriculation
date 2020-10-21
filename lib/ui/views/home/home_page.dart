import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.children, this.paddingBottom: 10}) : super(key: key);

  final List<Widget> children;
  final double paddingBottom;

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
        child: Column(
          children: widget.children
              .map((e) => Padding(
                    padding: EdgeInsets.only(bottom: widget.paddingBottom),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
