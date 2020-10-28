import 'package:flutter/material.dart';
import 'package:matric/core/services/navigation_service.dart';
import 'package:matric/core/view_models/download_model.dart';
import 'package:matric/locator.dart';
import 'package:matric/ui/shared/alert_style.dart';
import 'package:matric/ui/shared/colors.dart';
import 'package:matric/ui/shared/constants.dart';
import 'package:matric/ui/shared/font_styles.dart';
import 'package:matric/ui/widgets/loading.dart';
import 'package:matric/ui/widgets/scrollable_list.dart';
import 'package:matric/ui/widgets/subject_button.dart';
import 'package:provider/provider.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DownloadView extends StatefulWidget {
  const DownloadView({Key key}) : super(key: key);

  @override
  _DownloadViewState createState() => _DownloadViewState();
}

class _DownloadViewState extends State<DownloadView> {
  DownloadModel _downloadModel = locator<DownloadModel>();
  NavigationService _navigationService = locator<NavigationService>();

  @override
  void initState() {
    _downloadModel.loadExams(_showDialog);
    super.initState();
  }

  void _showDialog() {
    Alert(
      context: context,
      style: alertStyle(context: context),
      title: "Network Error",
      desc: "There seems there is a network error!",
      buttons: [
        DialogButton(
          child: Text('Ok'),
          onPressed: () => _navigationService.goBackFromDialog(),
        ),
        DialogButton(
          child: Text('Try Again'),
          onPressed: () {
            _downloadModel.loadExams(_showDialog);
            _navigationService.goBack();
          },
        )
      ],
    ).show();
  }

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
          body: ChangeNotifierProvider<DownloadModel>.value(
            value: _downloadModel,
            child: Consumer<DownloadModel>(
              builder: (_, model, child) => model.state == ViewState.Busy
                  ? Loading(message: model.message)
                  : ScrollableList(
                      paddingTop: 20,
                      paddingLeft: 30,
                      paddingRight: 30,
                      paddingInBetween: 15.0,
                      children: model.searchRefs
                          .map((ref) => SubjectButton(
                                subject: ref.subject,
                                color: subjectColor(ref.subject),
                                examLeft: ref.nationalExams.length,
                              ))
                          .toList(),
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
