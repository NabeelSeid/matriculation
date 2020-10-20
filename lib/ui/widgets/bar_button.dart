import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  const BarButton({
    Key key,
    this.elevation: 3,
    @required this.borderRadius,
    @required this.child,
    this.onTab,
  }) : super(key: key);

  final double elevation;
  final BorderRadius borderRadius;
  final Widget child;
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      elevation: elevation,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTab,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
