import 'package:flutter/material.dart';

class BarButton extends StatelessWidget {
  const BarButton({
    Key key,
    this.elevation: 3,
    @required this.borderRadius,
    @required this.child,
    this.onTap,
  }) : super(key: key);

  final double elevation;
  final BorderRadius borderRadius;
  final Widget child;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.card,
      elevation: elevation,
      borderRadius: borderRadius,
      child: InkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
