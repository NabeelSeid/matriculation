import 'package:flutter/material.dart';
import 'package:matric/routes.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollableList(
      paddingTop: 60,
      paddingInBetween: 15.0,
      children: [
        SubjectButton(
          subject: 'Physics',
          onTap: () => Navigator.of(context).pushNamed(Routes.Subject),
        ),
        SubjectButton(subject: 'Biology'),
        SubjectButton(subject: 'Chemistry')
      ],
    );
  }
}
