import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/colors.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          child: ExamExpansionTile(
            title: Text('2008'),
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SubjectButton(
                      subject: 'Chemistry',
                      year: '2008',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SubjectButton(
                      subject: 'Chemistry',
                      year: '2008',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SubjectButton(
                      subject: 'Chemistry',
                      year: '2008',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: SubjectButton(
                      subject: 'Chemistry',
                      year: '2008',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
