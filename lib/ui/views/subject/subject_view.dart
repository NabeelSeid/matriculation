import 'package:flutter/material.dart';
import 'package:matric/routes.dart';
import 'package:matric/ui/widgets/expandable_app_bar.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class SubjectView extends StatelessWidget {
  const SubjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableAppBar(
        title: 'Subject',
        padding: EdgeInsets.fromLTRB(30, 45, 30, 0),
        background: Colors.indigoAccent.withOpacity(0.2),
        child: Column(
          children: [
            SubjectButton(
              subject: 'Subject',
              year: '2010',
              onTap: () => Navigator.of(context).pushNamed(Routes.Exam),
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
