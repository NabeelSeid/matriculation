import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/expandable_app_bar.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class SubjectView extends StatelessWidget {
  const SubjectView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableAppBar(
          title: 'Subject',
          child: Column(
            children: [
              SubjectButton(
                subject: 'Subject',
                year: '2010',
              ),
              SubjectButton(
                subject: 'Subject',
                year: '2010',
              ),
              SubjectButton(
                subject: 'Subject',
                year: '2010',
              )
            ],
          )),
    );
  }
}
