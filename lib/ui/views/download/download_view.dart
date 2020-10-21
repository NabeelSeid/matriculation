import 'package:flutter/material.dart';
import 'package:matric/ui/shared/constants.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';
import 'package:matric/ui/widgets/subject_button.dart';

class DownloadView extends StatelessWidget {
  const DownloadView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: Constants.homeDownloadTrans,
      child: Material(
        child: Scaffold(
          appBar: AppBar(
            elevation: 1.0,
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.of(context).pop()),
            title: Text('Download Exams', style: headline6(context)),
          ),
          body: ScrollableList(
            paddingTop: 20,
            paddingLeft: 30,
            paddingRight: 30,
            paddingInBetween: 15.0,
            children: [
              SubjectButton(
                subject: 'Physics',
                downloadMode: true,
                examLeft: 2,
              ),
              SubjectButton(
                subject: 'Biology',
                downloadMode: true,
                examLeft: 3,
              ),
              SubjectButton(
                subject: 'Chemistry',
                downloadMode: true,
                examLeft: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
