import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/colors.dart';
import 'package:matric/ui/shared/font_styles.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: Stack(
            children: [
              SubjectBarButton(),
            ],
          ),
        ),
      ),
    );
  }
}

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

class SubjectBarButton extends StatelessWidget {
  const SubjectBarButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarButton(
      elevation: 4,
      borderRadius: boxy,
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 90, minWidth: 110),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: boxy,
            gradient: LinearGradient(
              colors: [Colors.white, Colors.deepPurpleAccent],
              begin: Alignment.bottomLeft,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Opacity(
                      opacity: 0.6,
                      child: Text('2005', style: overline(context)),
                    ),
                    SizedBox(height: 5.0),
                    Text('Chemistry', style: title),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 5.0),
                  child: Material(
                    type: MaterialType.card,
                    elevation: 3,
                    borderRadius: rounded,
                    color: canvasBG(context, opacity: 0.8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.check, color: Colors.green),

                      // Row(
                      //   mainAxisSize: MainAxisSize.min,
                      //   children: [
                      //     Icon(Icons.cloud_download),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     Text('3 Exams'),
                      //   ],
                      // ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
        onTap: () {},
        borderRadius: borderRadius,
        child: child,
      ),
    );
  }
}
