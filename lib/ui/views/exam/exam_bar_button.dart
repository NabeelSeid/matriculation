import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/widgets/bar_button.dart';

class ExamBarButton extends StatelessWidget {
  const ExamBarButton({
    Key key,
    @required this.title,
    this.icon,
    this.onTap,
  }) : super(key: key);

  final Widget title;
  final Widget icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return BarButton(
      elevation: 1,
      borderRadius: boxy,
      onTap: onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 93, minWidth: 110),
        child: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                icon,
                SizedBox(height: 10),
                title,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
