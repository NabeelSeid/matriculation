import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/shared/font_styles.dart';
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

class TitledCard extends StatelessWidget {
  const TitledCard({
    Key key,
    this.title,
    this.child,
  }) : super(key: key);

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        elevation: 3,
        type: MaterialType.card,
        borderRadius: boxy,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: cardTitle(context)),
              SizedBox(height: 10.0),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

enum Choices { A, B, C, D, X }

class ChoiceCard extends StatefulWidget {
  const ChoiceCard({Key key, this.title: 'Choices'}) : super(key: key);

  final String title;

  @override
  _ChoiceCardState createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
  Choices _chosen = null;

  void updateChoice(Choices choice) => setState(() => _chosen = choice);

  @override
  Widget build(BuildContext context) {
    return TitledCard(
      title: widget.title,
      child: Column(
        children: [
          Choice<Choices>(
            value: Choices.A,
            groupValue: _chosen,
            onChanged: updateChoice,
            answer: Choices.B,
          ),
          Choice<Choices>(
            value: Choices.B,
            groupValue: _chosen,
            onChanged: updateChoice,
            answer: Choices.B,
          ),
          Choice<Choices>(
            value: Choices.C,
            groupValue: _chosen,
            onChanged: updateChoice,
            answer: Choices.B,
          ),
          Choice<Choices>(
            value: Choices.D,
            groupValue: _chosen,
            onChanged: updateChoice,
            answer: Choices.B,
          ),
        ],
      ),
    );
  }
}

class Choice<T> extends StatelessWidget {
  const Choice({
    Key key,
    @required this.value,
    @required this.groupValue,
    @required this.answer,
    this.onChanged,
  }) : super(key: key);

  final T value;
  final T groupValue;
  final T answer;
  final Function(T) onChanged;

  Widget showAnswer() {
    if (groupValue == null) return Container();

    if (value == answer)
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Icon(
          Icons.check,
          size: 30.0,
          color: Colors.green,
        ),
      );

    if (groupValue == value) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Icon(
          Icons.close,
          size: 30.0,
          color: Colors.red,
        ),
      );
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged(value),
      borderRadius: boxy,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Expanded(
            child: Text(
                'Hello There how are you doing today! Hello There how are you doing today!'),
          ),
          showAnswer(),
        ],
      ),
    );
  }
}
