import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:matric/core/choices_enum.dart';
import 'package:matric/core/data_models/choice.dart';
import 'package:matric/ui/shared/border_shape.dart';
import 'package:matric/ui/widgets/title_card.dart';

class ChoiceCard extends StatefulWidget {
  const ChoiceCard({
    Key key,
    @required this.answer,
    @required this.choiceModel,
  }) : super(key: key);

  final Choices answer;
  final ChoiceModel choiceModel;

  @override
  _ChoiceCardState createState() => _ChoiceCardState();
}

class _ChoiceCardState extends State<ChoiceCard> {
  Choices _chosen;

  void updateChoice(Choices choice) => setState(() => _chosen = choice);

  @override
  Widget build(BuildContext context) {
    return TitledCard(
      title: "Choices",
      child: Column(
        children: [
          Choice<Choices>(
            value: Choices.A,
            groupValue: _chosen,
            onChanged: updateChoice,
            child: widget.choiceModel.choiceA,
            answer: widget.answer,
          ),
          Choice<Choices>(
            value: Choices.B,
            groupValue: _chosen,
            onChanged: updateChoice,
            child: widget.choiceModel.choiceB,
            answer: widget.answer,
          ),
          Choice<Choices>(
            value: Choices.C,
            groupValue: _chosen,
            onChanged: updateChoice,
            child: widget.choiceModel.choiceC,
            answer: widget.answer,
          ),
          Choice<Choices>(
            value: Choices.D,
            groupValue: _chosen,
            onChanged: updateChoice,
            child: widget.choiceModel.choiceD,
            answer: widget.answer,
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
    @required this.child,
    this.onChanged,
  }) : super(key: key);

  final T value;
  final T groupValue;
  final T answer;
  final String child;
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
              data: child,
              style: {'body': Style(margin: EdgeInsets.all(0.0))},
            ),
          ),
          showAnswer(),
        ],
      ),
    );
  }
}
