import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/html_parser.dart';
import 'package:flutter_html/style.dart';
import 'package:matric/ui/widgets/choice_card.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_view_with_indicator.dart';
import 'package:matric/ui/widgets/title_card.dart';

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
    double width = MediaQuery.of(context).size.width;

    return new Scaffold(
        appBar: AppBar(
          title: Text('flutter_html Example'),
          centerTitle: true,
        ),
        body: PageViewWithIndicator(
            bodyPageController: _bodyPageController,
            pages: [
              '1',
              '2',
              'P'
            ],
            childern: [
              ListView(
                children: [
                  TitledCard(
                    title: 'Question',
                    child: Html(
                      data:
                          "Why do micro-organisms decompose dead organic matter?",
                      style: {
                        "body": Style(margin: EdgeInsets.all(0)), 
                      },
                    ),
                  ),
                  ChoiceCard()
                ],
              ),
              Html(data: "Hello There"),
              Html(data: "Hello There"),
            ]));
  }
}
