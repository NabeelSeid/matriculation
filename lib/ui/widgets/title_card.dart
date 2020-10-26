import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';

class TitledCard extends StatelessWidget {
  const TitledCard({
    Key key,
    this.title,
    this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 3,
        type: MaterialType.card,
        borderRadius: boxy,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: cardTitle(context)),
              SizedBox(height: 10.0),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
