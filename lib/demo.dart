import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:matric/core/data_models/exam.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_view_with_indicator.dart';

import 'dart:convert';

import 'package:matric/ui/widgets/question_page.dart';

class Demo extends StatefulWidget {
  Demo({Key key}) : super(key: key);

  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  PageController _bodyPageController;
  ExamModel examModel;

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
            print(snapshot.data);
            if (snapshot.data != null) {
              examModel = ExamModel.fromJson(json.decode(snapshot.data));

              return PageViewWithIndicator(
                  bodyPageController: _bodyPageController,
                  pages: examModel.pages ?? ['1', '2', 'P'],
                  childern: examModel.questions
                          .map((question) =>
                              QuestionPage(questionModel: question))
                          .toList() ??
                      [
                        Html(data: "Hello There"),
                        Html(data: "Hello There"),
                        Html(data: "Hello There"),
                      ]);
            }

            return Container();
          },
        ));
  }
}
