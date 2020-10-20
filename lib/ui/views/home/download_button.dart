import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/widgets/bar_button.dart';

class DownloadBarButton extends StatelessWidget {
  const DownloadBarButton({
    Key key,
    this.onTab,
  }) : super(key: key);
  final Function onTab;

  @override
  Widget build(BuildContext context) {
    return BarButton(
      borderRadius: boxy,
      onTab: onTab,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Icon(
              Icons.cloud_download,
              color: Theme.of(context).accentColor,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Download Exam',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
