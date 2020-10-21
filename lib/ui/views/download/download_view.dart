import 'package:flutter/material.dart';
import 'package:matric/ui/shared/constants.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';
import 'package:matric/ui/views/home/subject_page.dart';
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
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: HomePage(
              paddingBottom: 15.0,
              children: [
                SubjectButton(subject: 'Physics'),
                SubjectButton(subject: 'Biology'),
                SubjectButton(subject: 'Chemistry')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
