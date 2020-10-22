import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/expandable_app_bar.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class ExamView extends StatelessWidget {
  const ExamView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableAppBar(
        title: 'Subject',
        padding: EdgeInsets.fromLTRB(30, 45, 30, 0),
        child: Column(
          children: [
            SubjectButton(
              subject: 'Subject',
              year: '2010',
            ),
            SizedBox(height: 30),
            SubjectButton(
              subject: 'Subject',
              year: '2010',
            ),
            SizedBox(height: 30),
            SubjectButton(
              subject: 'Subject',
              year: '2010',
            ),
            SizedBox(height: 30),
            SubjectButton(
              subject: 'Subject',
              year: '2010',
            ),
            SizedBox(height: 30),
            SubjectButton(
              subject: 'Subject',
              year: '2010',
            )
          ],
        ),
      ),
    );
  }
}
