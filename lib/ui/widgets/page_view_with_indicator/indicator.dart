import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';

class Indicator extends StatelessWidget {
  const Indicator(
    this.page, {
    Key key,
    this.fontSize,
    this.onTap,
  }) : super(key: key);

  final String page;
  final double fontSize;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    var _fontStyle = pageIndicatorStyle(context).copyWith(fontSize: fontSize);

    return Container(
      decoration: BoxDecoration(borderRadius: boxy),
      child: Center(
        child: InkWell(
          onTap: onTap,
          borderRadius: boxy,
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Text(
              page,
              style: _fontStyle,
            ),
          ),
        ),
      ),
    );
  }
}
