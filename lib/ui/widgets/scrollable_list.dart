import 'package:flutter/material.dart';

class ScrollableList extends StatelessWidget {
  ScrollableList(
      {Key key,
      this.children,
      this.paddingLeft: 10,
      this.paddingTop: 10,
      this.paddingRight: 10,
      this.paddingBottom: 0,
      this.paddingInBetween: 10})
      : super(key: key);

  final List<Widget> children;
  final double paddingLeft;
  final double paddingTop;
  final double paddingRight;
  final double paddingBottom;
  final double paddingInBetween;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          paddingLeft,
          paddingTop,
          paddingRight,
          paddingBottom,
        ),
        child: Column(
          children: children
              .map((e) => Padding(
                    padding: EdgeInsets.only(bottom: paddingInBetween),
                    child: e,
                  ))
              .toList(),
        ),
      ),
    );
  }
}
