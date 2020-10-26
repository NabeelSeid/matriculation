import 'package:flutter/material.dart';
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
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text('AppBar'),
      ),
      body: PageViewWithIndicator(
          bodyPageController: _bodyPageController,
          childern: [
            Column(
              children: [
                TitledCard(
                  title: 'Question',
                  child: Text(
                      'Why do micro-organisms decompose dead organic matter?'),
                ),
                ChoiceCard(),
                Expanded(child: Container())
              ],
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