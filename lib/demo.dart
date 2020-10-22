import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/views/home/exam_expansion_tile.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('gogo'),
    );
  }
}

// ListView.builder(
//             padding: const EdgeInsets.all(8),
//             itemCount: 30,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 child: Center(child: Text('Item $index')),
//               );
//             })
