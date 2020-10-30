import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:matric/core/data_models/choice.dart';
import 'package:matric/core/data_models/exam.dart';
import 'package:matric/ui/widgets/exam_page.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_view_with_indicator.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  PageController _bodyPageController;

  @override
  void initState() {
    super.initState();
    _bodyPageController = PageController();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: AppBar(
          title: Text('flutter_html Example'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString("assets/english_2008.json"),
          builder: (_, snapshot) {
            if (snapshot.data != null) {
              ExamModel.fromJson(snapshot.data);
            }
            return PageViewWithIndicator(
                bodyPageController: _bodyPageController,
                pages: [
                  '1',
                  '2',
                  'P'
                ],
                childern: [
                  // ExamPage(
                  //   examModel: ExamModel(
                  //     question:
                  //         "Why do micro-organisms decompose dead organic matter?",
                  //     choices: ChoiceModel(),
                  //   ),
                  // ),
                  Html(data: "Hello There"),
                  Html(data: "Hello There"),
                ]);
          },
        ));
  }
}
