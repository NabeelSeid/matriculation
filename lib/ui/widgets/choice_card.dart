import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/widgets/title_card.dart';

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
            child: Html(
              data:
                  'Hello There how are you doing today! Hello There how are you doing today!',
              style: {'body': Style(margin: EdgeInsets.all(0.0))},
            ),
          ),
          showAnswer(),
        ],
      ),
    );
  }
}
