import 'package:flutter/material.dart';
import 'package:matric/ui/views/home/exam_expansion_tile.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class YearPage extends StatelessWidget {
  const YearPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollableList(
      paddingTop: 60,
      paddingInBetween: 15.0,
      children: [
        ExamExpansionTile(
          title: Text('Exams'),
          children: [
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            )
          ],
        ),
        ExamExpansionTile(
          title: Text('Exams'),
          children: [
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            ),
            SubjectButton(
              subject: 'Chemistry',
              year: '2008',
            )
          ],
        )
      ],
    );
  }
}
