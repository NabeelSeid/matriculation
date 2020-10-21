import 'package:flutter/material.dart';
import 'package:matric/ui/views/home/home_page.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class SubjectPage extends StatelessWidget {
  const SubjectPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(
      paddingBottom: 15.0,
      children: [
        SubjectButton(subject: 'Physics'),
        SubjectButton(subject: 'Biology'),
        SubjectButton(subject: 'Chemistry')
      ],
    );
  }
}
