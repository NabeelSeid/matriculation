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
              // SubjectBarButton(),
            ],
          ),
        ),
      ),
    );
  }
}
