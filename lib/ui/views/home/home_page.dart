import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key key, this.children, this.paddingBottom: 10}) : super(key: key);

  final List<Widget> children;
  final double paddingBottom;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 60, 10, 0),
        child: Column(
          children: children
              .map((e) => Padding(
                    padding: EdgeInsets.only(bottom: paddingBottom),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}