import 'package:flutter/material.dart';
import 'package:matric/ui/widgets/title_card.dart';
import 'package:matric/ui/widgets/page_view_with_indicator/page_view_with_indicator.dart';

class ExamPracticeView extends StatefulWidget {
  ExamPracticeView({Key key}) : super(key: key);

  @override
  _ExamPracticeViewState createState() => _ExamPracticeViewState();
}

class _ExamPracticeViewState extends State<ExamPracticeView> {
  PageController _bodyPageController;

  @override
  void initState() {
    super.initState();
    _bodyPageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('AppBar'),
      ),
      body: PageViewWithIndicator(
          bodyPageController: _bodyPageController,
          childern: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  TitledCard(
                    title: 'Question',
                    child: Text(
                        'Why do micro-organisms decompose dead organic matter?'),
                  ),
                  // ChoiceCard(),
                  Expanded(child: Container())
                ],
              ),
            ),
            Center(child: Text('2')),
            Center(child: Text('3')),
            Center(child: Text('4')),
            Center(child: Text('5')),
            Center(child: Text('6')),
            Center(child: Text('7')),
            Center(child: Text('8')),
            Center(child: Text('9')),
          ]),
    );
  }
}
