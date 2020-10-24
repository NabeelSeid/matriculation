import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/views/exam/exam_bar_button.dart';
import 'package:matric/ui/widgets/expandable_app_bar.dart';

class ExamView extends StatelessWidget {
  const ExamView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ExpandableAppBar(
        title: 'Subject Year',
        padding: EdgeInsets.fromLTRB(30, 45, 30, 0),
        child: Column(
          children: [
            ExamBarButton(
                title: Text('Exam Practice', style: subtitle2(context)),
                icon: FaIcon(FontAwesomeIcons.pencilAlt)),
            SizedBox(height: 30),
            ExamBarButton(
                title: Text('Exam Simulation', style: subtitle2(context)),
                icon: FaIcon(FontAwesomeIcons.userClock)),
            SizedBox(height: 30),
            ExamBarButton(
                title: Text('Exam Chapterized', style: subtitle2(context)),
                icon: FaIcon(Icons.collections_bookmark)),
          ],
        ),
      ),
    );
  }
}
